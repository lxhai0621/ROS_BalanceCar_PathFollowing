#!/usr/bin/env python

import rospy
from pyomo.environ import *
from pyomo.dae import *
from algorithm_simulation.msg import Lane,Waypoint
from geometry_msgs.msg import PoseStamped,TwistStamped,Twist,Quaternion
import numpy as np
from nav_msgs.msg import Odometry
import tf
from scipy import spatial
from scipy.interpolate import interp1d

class MPCController(object):
    def __init__(self):
        print(111)
        rospy.init_node("mpc_control")
        rospy.Subscriber("/odom",Odometry,self.odom_callback,queue_size=1)
        rospy.Subscriber("/local_waypoints",Lane,self.waypoint_callback,queue_size=1)
        rospy.Subscriber("/mycar/center_pose",PoseStamped,self.pose_callback,queue_size=1)
        self.vel_pub = rospy.Publisher("/mycar/cmd_vel",Twist,queue_size=1)
        
        self.build_model()
        self.rp = np.zeros(3)
        self.crv = 0.0
        self.crw = 0.0

        self.Current_pose = None
        self.Current_waypoints = None

        self.rate = rospy.Rate(10)
        while not rospy.is_shutdown():
            if self.Current_pose and self.Current_waypoints:
                self.get_robotpose()
                px = self.rp[0] + self.crv * np.cos(self.rp[2]) * 0.1
                py = self.rp[1] + self.crv * np.sin(self.rp[2]) * 0.1
                psi = self.rp[2] + self.crw * 0.1

                self.rp[0] = px
                self.rp[1] = py
                self.rp[2] = psi

                cwp_robot = np.zeros((20,2))
                for i in range(20):
                    dx = self.Current_waypoints.waypoints[i].pose.pose.position.x - px
                    dy = self.Current_waypoints.waypoints[i].pose.pose.position.y - py

                    cwp_robot[i,0] = dx * np.cos(psi) + dy * np.sin(psi)
                    cwp_robot[i,1] = dy * np.cos(psi) - dx * np.sin(psi)
                
                coeffs = np.polyfit(cwp_robot[:,0],cwp_robot[:,1],3)
                cte = self.cubic_fun(coeffs,0)

                f_prime_x = coeffs[2]
                epsi = np.arctan(f_prime_x)

                s0 = np.array([3.0,0.001,-1.57,cte,coeffs])
                pre_path,v,w = self.Solve(s0,coeffs)
                self.vel_pub(v,w)
                print(v,w)
            self.rate.sleep()
        rospy.spin()



        
    def build_model(self):

        self.N = 20 # 向前预测步数
        self.states_num = 5 #状态数量 1:x 2:y 3:psi 4:cte 5:epsi
        self.control_num = 2 # 1:v 2:w

        model = ConcreteModel()
        model.sk = RangeSet(0,self.N) #状态变量的时间步长
        model.uk = RangeSet(0,self.N-1) #控制变量的时间步长
        model.uk1 = RangeSet(0,self.N-2) #控制变量变化的时间步长

        #定义参数 
        model.dt = Param(initialize=0.1,mutable=True) #差分间隔
        model.wg = Param(RangeSet(0,3),initialize={0:1., 1:10., 2:100., 3:1000},mutable=True) #权重
        model.ref_v = Param(initialize=1,mutable=True) #期望速度
        model.ref_cte = Param(initialize=0.0,mutable=True) #期望跟踪误差  
        model.ref_epsi = Param(initialize=0.0,mutable=True) #期望航向误差
        model.s0 = Param(RangeSet(0,self.states_num-1),initialize={0:0., 1:0., 2:0., 3:0., 4:0.},mutable=True) #初始化
        model.coeffs = Param(RangeSet(0,3),initialize={0:-0.000458316, 1:0.00734257, 2:0.0538795, 3:0.080728},mutable=True) #路径点拟合参数

        #定义变量
        model.s = Var(RangeSet(0,self.states_num-1),model.sk) #状态变量
        model.f = Var(model.sk) #路径y值
        model.psides = Var(model.sk) #参考路径点方向角
        model.uv = Var(model.uk,bounds=(-0.01,2.0)) #控制量 速度
        model.uw = Var(model.uk,bounds=(-1.5,1.5)) #控制量 角速度

        #定义约束
        model.s0_update = Constraint(RangeSet(0,self.states_num-1),rule = lambda model, i: model.s[i,0] == model.s0[i])
        model.x_update = Constraint(model.sk,rule = lambda model,k:model.s[0,k+1] == model.s[0,k] + model.uv[k] * cos(model.s[2,k]) * model.dt if k<self.N-1 else Constraint.Skip)
        model.y_update = Constraint(model.sk,rule = lambda model,k:model.s[1,k+1] == model.s[1,k] + model.uv[k] * sin(model.s[2,k]) * model.dt if k<self.N-1 else Constraint.Skip)
        model.psi_update = Constraint(model.sk,rule = lambda model,k:model.s[2,k+1] == model.s[2,k] + model.uw[k] * model.dt if k<self.N-1 else Constraint.Skip)
        model.f_update = Constraint(model.sk,rule = lambda model, k:model.f[k] == model.coeffs[0] * model.s[0,k]**3 + model.coeffs[1] * model.s[0,k]**2 + model.coeffs[2]*model.s[0,k] + model.coeffs[3])
        model.psides_update = Constraint(model.sk,rule = lambda model, k:model.psides[k] == atan(3 * model.coeffs[0] * model.s[0,k]**2 + 2 * model.coeffs[1] * model.s[0,k] + model.coeffs[2]))
        model.cte_update = Constraint(model.sk,rule = lambda model, k:model.s[3,k+1] == model.f[k] - model.s[1,k] + model.uv[k] * sin(model.s[2,k] * model.dt) if k<self.N-1 else Constraint.Skip)
        model.epsi_update = Constraint(model.sk,rule = lambda model, k:model.s[4,k+1] == model.psides[k] - model.s[2,k] + model.uw[k] * model.dt if k<self.N-1 else Constraint.Skip)
        
        #定义目标函数
        model.cteobj = model.wg[3] * sum((model.s[3,k]-model.ref_cte)**2 for k in model.sk) #路径跟踪偏差
        model.epsiobj = model.wg[3] * sum((model.s[4,k]-model.ref_epsi)**2 for k in model.sk)
        model.vobj = model.wg[2] * sum((model.uv[k]-0.5)**2 for k in model.uk) #惩罚速度偏离一定的参考值
        model.uvobj = model.wg[1] * sum(model.uv[k] **2 for k in model.uk)  #惩罚过大速度输入
        model.uwobj = model.wg[1] * sum(model.uw[k]**2 for k in model.uk) #惩罚过大角速度输入
        model.sudobj = model.wg[0] * sum((model.uv[k+1]-model.uv[k])**2 for k in model.uk1) #惩罚速度变化量
        model.suaobj = model.wg[0] * sum((model.uw[k+1]-model.uw[k])**2 for k in model.uk1) #惩罚角速度变化量
        model.obj = Objective(expr= model.cteobj+model.epsiobj+model.vobj+model.uvobj+model.uwobj+model.sudobj+model.suaobj,sense=minimize)

        self.iN = model


    def Solve(self, state, coeffs):
        self.iN.s0.reconstruct({0:state[0], 1:state[1], 2:state[2], 3:state[3], 4:state[4]})
        self.iN.coeffs.reconstruct({0:coeffs[0], 1:coeffs[1], 2:coeffs[2], 3:coeffs[3]})
        self.iN.f_update.reconstruct()
        self.iN.s0_update.reconstruct()
        self.iN.psi_update.reconstruct()
        SolverFactory('ipopt').solve(self.iN)
        x_pred_vals = [self.iN.s[0,k]() for k in self.iN.sk]
        y_pred_vals = [self.iN.s[1,k]() for k in self.iN.sk]
        pre_path = np.zero((N,2))
        pre_path[:,0] = np.array(x_pred_vals)
        pre_path[:,1] = np.array(y_pred_vals)
        v = self.iN.uv[0]()
        w = self.iN.uw[0]()
        return pre_path, v, w

        

    def waypoint_callback(self,data):
        self.Current_waypoints = data


    def pose_callback(self,data):
        self.Current_pose = data

    def get_robotpose(self):
        self.rp[0] = self.Current_pose.pose.position.x
        self.rp[1] = self.Current_pose.pose.position.y
        quaternion = (self.Current_pose.pose.orientation.x,self.Current_pose.pose.orientation.y,self.Current_pose.pose.orientation.z,self.Current_pose.pose.orientation.w)
        euler = tf.transformations.euler_from_quaternion(quaternion)
        self.rp[2] = euler[2]


    def odom_callback(self,data):
        self.crv = data.twist.twist.linear.x
        self.crw = data.twist.twist.angular.z

    def cubic_fun(self,coeffs,x):
        return coeffs[0]*x**3 + coeffs[1]*x**2 + coeffs[3]

if __name__ == "__main__":
    try:
        print(111)
        MPCController()
    except rospy.ROSInterruptException:
        rospy.logerr("can not start pure_persuit node")
    


