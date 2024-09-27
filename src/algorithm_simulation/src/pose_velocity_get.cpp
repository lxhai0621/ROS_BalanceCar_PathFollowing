#include"ros/ros.h"
#include"geometry_msgs/TwistStamped.h"
#include"geometry_msgs/PoseStamped.h"
#include"gazebo_msgs/ModelStates.h"
#include"gazebo_msgs/LinkStates.h"
#include"geometry_msgs/Twist.h"
#include"tf2/LinearMath/Matrix3x3.h"
#include<math.h>
#include<iostream>
using namespace std;
class pose_velocity_get
{
    private:
        ros::NodeHandle nh;
        ros::Subscriber sub;
        ros::Publisher center_pose_pub;
        ros::Publisher velocity_pub;
        ros::Publisher rear_pose_pub;
        ros::Publisher front_pose_pub;

    public:
        pose_velocity_get();
        void Model_get(const gazebo_msgs::ModelStates::ConstPtr&p);
        ~pose_velocity_get();
};
pose_velocity_get::pose_velocity_get()
{
    //订阅gazebo的具体消息，回调函数Model_get负责处理新发布方将要发布的数据
    sub = nh.subscribe<gazebo_msgs::ModelStates>("/gazebo/model_states",1,&pose_velocity_get::Model_get,this);
    
    //初始化中心位姿，速度，后驱位姿，前驱位姿发布方
    center_pose_pub = nh.advertise<geometry_msgs::PoseStamped>("/mycar/center_pose",1);
    velocity_pub = nh.advertise<geometry_msgs::TwistStamped>("/mycar/velocity",1);
    rear_pose_pub = nh.advertise<geometry_msgs::PoseStamped>("/mycar/rear_pose",1);
    front_pose_pub = nh.advertise<geometry_msgs::PoseStamped>("/mycar/front_pose",1);

}

pose_velocity_get::~pose_velocity_get()
{
    //关闭节点
    ros::shutdown();
}

void pose_velocity_get::Model_get(const gazebo_msgs::ModelStates::ConstPtr&p)
{
    int ModelCount = p->name.size();
    int MycarIndex;
    for(int i=0;i<ModelCount;i++){
        //cout<<p->name[i]<<endl;
        if(p->name[i]=="robot"){
            MycarIndex=i;
        }
    }//找到小车模型在gazebo世界的消息

    geometry_msgs::Pose MyCarPose = p->pose[MycarIndex]; 
    geometry_msgs::Twist MyCarTwist = p->twist[MycarIndex];
    ros::Time time_stamp = ros::Time::now();

    double yaw,pitch,roll;
    tf2::Matrix3x3 mat(tf2::Quaternion(MyCarPose.orientation.x,MyCarPose.orientation.y,MyCarPose.orientation.z,MyCarPose.orientation.w));
    mat.getEulerYPR(yaw,pitch,roll);//四元数转换成欧拉角
    
    //小车中心位姿消息发布
    geometry_msgs::PoseStamped center_pose;
    center_pose.header.frame_id="/odom";
    center_pose.header.stamp=time_stamp;
    center_pose.pose.orientation=MyCarPose.orientation;
    center_pose.pose.position=MyCarPose.position;
    center_pose_pub.publish(center_pose);
    //ROS_INFO("中心位姿发布完成！");

    //小车速度消息发布
    geometry_msgs::TwistStamped velocity;
    velocity.header.frame_id="";
    velocity.header.stamp=time_stamp;
    velocity.twist.angular=MyCarTwist.angular;
    velocity.twist.linear=MyCarTwist.linear;
    velocity_pub.publish(velocity);
    //ROS_INFO("小车速度发布完成！");

    //小车后轴位姿消息发布
    geometry_msgs::PoseStamped rear_pose;
    rear_pose.header.frame_id="/odom";
    rear_pose.header.stamp=time_stamp;
    rear_pose.pose.position.x=center_pose.pose.position.x-cos(yaw)*0.2;
    rear_pose.pose.position.y=center_pose.pose.position.y-sin(yaw)*0.2;//0.1825为1/2模型车长
    rear_pose.pose.position.z=0;
    rear_pose.pose.orientation=MyCarPose.orientation;
    rear_pose_pub.publish(rear_pose);
    //ROS_INFO("后轴位姿发布完成!");

    //小车前轴位姿消息发布
    geometry_msgs::PoseStamped front_pose;
    front_pose.header.frame_id="/world";
    front_pose.header.stamp=time_stamp;
    front_pose.pose.position.x=center_pose.pose.position.x+cos(yaw)*0.2;
    front_pose.pose.position.y=center_pose.pose.position.y+sin(yaw)*0.2;//0.1825为1/2车长
    front_pose.pose.position.z=0;
    front_pose.pose.orientation=MyCarPose.orientation;
    front_pose_pub.publish(front_pose);
    //ROS_INFO("前轴位姿发布完成!");

} 


int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"velocity_pose_get"); 
    pose_velocity_get Pose_Velocity_Geter;
    ros::spin();
    return 0;
}
