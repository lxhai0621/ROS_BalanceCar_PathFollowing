#!/usr/bin/env python

import rospy
from geometry_msgs.msg import PoseStamped
from algorithm_simulation.msg import Lane,Waypoint
from nav_msgs.msg import Path
from nav_msgs.msg import Odometry
import math
from scipy.spatial import KDTree
import tf

odom_path = Path()

class Local_Path(object):
    def __init__(self):
        rospy.init_node("local_path")
        #订阅小车位姿和路径话题，获取相应消息
        rospy.Subscriber("/mycar/center_pose",PoseStamped,self.pose_get,queue_size=1)
        rospy.Subscriber("/waypoint",Lane,self.waypoint_cb,queue_size=1)
        rospy.Subscriber('/odom', Odometry, self.odom_cb)
        #记录小车运动过的路径
        self.record_path_pub = rospy.Publisher("/record_path",Path,queue_size=500)
        #创建局部路径发布者
        self.local_waypoint_pub = rospy.Publisher("/local_waypoints",Lane,queue_size=1)
        self.local_path_pub = rospy.Publisher("/local_path",Path,queue_size=1)

        self.global_path = None
        self.waypoint_tree = None
        self.plane = None
        self.pose = None


        rate = rospy.Rate(20)
        while not rospy.is_shutdown():
            if self.waypoint_tree and self.plane and self.pose:
                closest_point = self.get_closest()
                self.publish(closest_point)
            rate.sleep()
    
    #获取小车位姿消息
    def pose_get(self,msg):
        self.pose = msg
        quaternion = (self.pose.pose.orientation.x,self.pose.pose.orientation.y,self.pose.pose.orientation.z,self.pose.pose.orientation.w)
        euler = tf.transformations.euler_from_quaternion(quaternion)
        yaw = euler[2]
        angle_yaw = round(yaw * (180 / 3.1415926),2)
        

    #获取路径信息
    def waypoint_cb(self,massage):
        self.global_path = massage
        if not self.plane:
            self.plane = [[p.pose.pose.position.x,p.pose.pose.position.y] for p in massage.waypoints]
            self.waypoint_tree = KDTree(self.plane)

    def odom_cb(self,data):
        global odom_path

        odom_path.header = data.header
        odom_path.header.frame_id = '/odom'

        pose_Pose = PoseStamped()
        pose_Pose.header = data.header
        pose_Pose.pose = data.pose.pose
        pose_Pose.header.frame_id = '/odom'
        odom_path.poses.append(pose_Pose)

        self.record_path_pub.publish(odom_path)

    #找到离小车最近的点
    def get_closest(self):
        x = self.pose.pose.position.x
        y = self.pose.pose.position.y

        closest = self.waypoint_tree.query([x,y],1)[1]
        return closest

    #发布局部路径
    def publish(self,closest_point):
        lane = Lane()
        lane.header = self.global_path.header
        lane.waypoints = self.global_path.waypoints[closest_point:closest_point + 20]
        path = Path()
        path.header.frame_id = 'odom'

        for p in lane.waypoints:
            path_point = PoseStamped()
            path_point.pose.position.x = p.pose.pose.position.x
            path_point.pose.position.y = p.pose.pose.position.y
            path.poses.append(path_point)
        
        self.local_waypoint_pub.publish(lane)
        self.local_path_pub.publish(path)
        




if __name__ == "__main__":
    try:
        Local_Path()
    except rospy.ROSInterruptException:
        rospy.logerr("can not start the local path node")