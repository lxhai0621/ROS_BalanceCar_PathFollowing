#include"ros/ros.h"
#include"geometry_msgs/PoseStamped.h"
#include"geometry_msgs/Pose.h"
#include"tf2_ros/transform_broadcaster.h"
#include"geometry_msgs/TransformStamped.h"
class transform_publisher
{
private:
    ros::NodeHandle nh;
    ros::Subscriber posesub;
public:
    transform_publisher();
    ~transform_publisher();
    void transform(const geometry_msgs::PoseStamped::ConstPtr &p);
};

transform_publisher::transform_publisher()
{
    //订阅小车位姿信息
    posesub = nh.subscribe<geometry_msgs::PoseStamped>("/mycar/center_pose",1,&transform_publisher::transform,this);
    ros::spin();
}

transform_publisher::~transform_publisher()
{
    //关闭节点
    ros::shutdown();
}

void transform_publisher::transform(const geometry_msgs::PoseStamped::ConstPtr &p)
{
    geometry_msgs::Point pose = p->pose.position;
    geometry_msgs::Quaternion quaternion = p->pose.orientation;
    static tf2_ros::TransformBroadcaster broadcaster;
    geometry_msgs::TransformStamped tfs;
    //小车和gazebo世界坐标转换
    tfs.header.frame_id="/odom";
    tfs.header.stamp=ros::Time::now();
    tfs.child_frame_id="dummy_link";
    tfs.transform.rotation.x=quaternion.x;
    tfs.transform.rotation.y=quaternion.y;
    tfs.transform.rotation.z=quaternion.z;
    tfs.transform.rotation.w=quaternion.w;
    tfs.transform.translation.x=pose.x;
    tfs.transform.translation.y=pose.y;
    tfs.transform.translation.z=pose.z;
    // 仅当时间戳变化时发布变换
    static ros::Time last_tf_time;
    if (tfs.header.stamp != last_tf_time)
    {
        last_tf_time = tfs.header.stamp;
        broadcaster.sendTransform(tfs);
    }
}
int main(int argc,char *argv[])
{
    ros::init(argc,argv,"transform_publisher");
    transform_publisher transform_publisher;
}