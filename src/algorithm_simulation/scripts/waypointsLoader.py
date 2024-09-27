#!/usr/bin/env python

import rospy
import os
import csv
from geometry_msgs.msg import PoseStamped,Quaternion
from nav_msgs.msg import Path
from algorithm_simulation.msg import Lane,Waypoint
import tf
import math


class waypointsLoader(object):
    def __init__(self):
        rospy.init_node("waypointsLoader")
        #waypoint是为了控制小车发布的话题，path是为了显示路径发布的话题
        self.pub = rospy.Publisher("/waypoint",Lane,queue_size=1,latch=True)
        self.path_pub = rospy.Publisher("/path",Path,queue_size=1,latch=True)
        self.velocity = rospy.get_param("~velocity")
        self.publish(rospy.get_param("~filename"))
        rospy.spin()

    #载入路径csv文件并设置消息参数
    def load_waypoints(self,filename):
        waypoints=[]
        base_path = Path()
        base_path.header.frame_id = "odom"
        with open(filename) as f:
            reader = csv.DictReader(f,['x','y','yaw'])
            for point in reader:
                p=Waypoint()
                p.pose.pose.position.x = float(point['x'])
                p.pose.pose.position.y = float(point['y'])
                qtn = tf.transformations.quaternion_from_euler(0,0,float(point['yaw']))
                p.pose.pose.orientation.x = qtn[0]
                p.pose.pose.orientation.y = qtn[1]
                p.pose.pose.orientation.z = qtn[2]
                p.pose.pose.orientation.w = qtn[3]
                p.twist.twist.linear.x = float(self.velocity)
                waypoints.append(p)
                
                path_point = PoseStamped()
                path_point.pose.position.x = p.pose.pose.position.x
                path_point.pose.position.y = p.pose.pose.position.y
                base_path.poses.append(path_point)
        #设置小车速度
        waypoints = self.velocity_set(waypoints)
        return waypoints,base_path


    def velocity_set(self,waypoints):
        last = waypoints[-1]
        last.twist.twist.linear.x = 0
        for wp in waypoints[:-1][::-1]:
            wp.twist.twist.linear.x = float(self.velocity)

        return waypoints

    #发布话题
    def publish(self,filename):
        if(os.path.isfile(filename)):
            waypoints,base_path = self.load_waypoints(filename)
            lane = Lane()
            lane.header.frame_id = '/odom'
            lane.header.stamp = rospy.Time(0)
            lane.waypoints = waypoints
            self.pub.publish(lane)
            self.path_pub.publish(base_path)
            rospy.loginfo("Waypoints publish finish")
        else:
            rospy.logerr("%s is not a file!",filename)


        


if __name__ == "__main__":
    try:
        waypointsLoader()
    except rospy.ROSInterruptException:
        rospy.logerr('Couldn not start waypointsLoader node.')