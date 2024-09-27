#!/usr/bin/env python

import rospy
import os
import csv
from geometry_msgs.msg import PoseStamped,Quaternion
from nav_msgs.msg import Path
from algorithm_simulation.msg import Lane,Waypoint
from tf.transformations import quaternion_from_euler
from math import pow, atan2, sqrt
from math import sqrt, cos, pi, sin

class Complex_WaypointsLoader:
    def __init__(self):
        rospy.init_node("waypointsLoader")
        self.pub = rospy.Publisher("/waypoint",Lane,queue_size=1,latch=True)
        self.path_pub = rospy.Publisher("/path",Path,queue_size=1,latch=True)
        self.velocity = rospy.get_param("~velocity")
        self.trajectory_type = rospy.get_param("~trajectory_type")
        self.publish()
        rospy.spin()

    def load_waypoints(self):
        waypoints=[]
        base_path = Path()
        base_path.header.frame_id = "odom"
        iter = 950
        if self.trajectory_type == "circle":
            radius = 5
            period = 1000
            for t in range(iter,-1,-1):
                p = Waypoint()
                p.pose.pose.position.x = radius * sin(2 * pi * t / period)
                p.pose.pose.position.y = -radius * cos(2 * pi * t / period)
                grad =  atan2((-radius * cos(2 * pi * (t+1) / period)- p.pose.pose.position.y) , (radius * sin(2 * pi * (t + 1) / period)) - (p.pose.pose.position.x + 1e-5))
                q = quaternion_from_euler(0, 0, grad)
                p.pose.pose.orientation.x = q[0]
                p.pose.pose.orientation.y = q[1]
                p.pose.pose.orientation.z = q[2]
                p.pose.pose.orientation.w = q[3]
                p.twist.twist.linear.x = float(self.velocity)
                waypoints.append(p)

                path_point = PoseStamped()
                path_point.pose.position.x = p.pose.pose.position.x
                path_point.pose.position.y = p.pose.pose.position.y
                base_path.poses.append(path_point)

        if self.trajectory_type == "epitrochoid":
            R = 5
            r = 1
            d = 3
            period = 1000
            scale_factor = 1 
            for t in range(iter,-1,-1):
                p = Waypoint()
                p.pose.pose.position.x = scale_factor * ((R + r) * cos(2 * pi * t/ period) - d * cos(((R + r) / r) * 2 * pi * t / period))
                p.pose.pose.position.y = scale_factor * ((R + r) * sin(2 * pi * t/ period) - d * sin(((R + r) / r) * 2 * pi * t / period))
                grad =  atan2((5 * sin(2 * pi* (t+1) / period) * cos(2 * pi* (t+1) / period) / (sin(2 * pi * (t+1) / period) ** 2 + 1)- p.pose.pose.position.y) , (5 * cos(2 * pi* (t+1) / period) / (sin(2 * pi * (t+1) / period) ** 2 + 1)-p.pose.pose.position.x + 1e-5))
                q = quaternion_from_euler(0, 0, grad)
                p.pose.pose.orientation.x = q[0]
                p.pose.pose.orientation.y = q[1]
                p.pose.pose.orientation.z = q[2]
                p.pose.pose.orientation.w = q[3]
                p.twist.twist.linear.x = float(self.velocity)
                waypoints.append(p)

                path_point = PoseStamped()
                path_point.pose.position.x = p.pose.pose.position.x
                path_point.pose.position.y = p.pose.pose.position.y
                base_path.poses.append(path_point)

        if self.trajectory_type == "square":
            period = 1000
            l = 10
            PI = 3.141592
            x = 0.0
            y = 0.0
            for t in range(0,iter):
                p = Waypoint()
                if(t <= period * 0.25):
                    x = 0
                    y += l/(period*0.25)
                    p.pose.pose.position.x = x
                    p.pose.pose.position.y = y
                    q = quaternion_from_euler(0, 0, PI/2)
                    p.pose.pose.orientation.x = q[0]
                    p.pose.pose.orientation.y = q[1]
                    p.pose.pose.orientation.z = q[2]
                    p.pose.pose.orientation.w = q[3]
                    p.twist.twist.linear.x = float(self.velocity)
                elif(t <= period * 0.5):
                    x -= l/(period*0.25)
                    p.pose.pose.position.x = x
                    p.pose.pose.position.y = y
                    q = quaternion_from_euler(0, 0, PI)
                    p.pose.pose.orientation.x = q[0]
                    p.pose.pose.orientation.y = q[1]
                    p.pose.pose.orientation.z = q[2]
                    p.pose.pose.orientation.w = q[3]
                    p.twist.twist.linear.x = float(self.velocity)
                elif(t <= period * 0.75):
                    y -=  l/(period*0.25)
                    p.pose.pose.position.x = x
                    p.pose.pose.position.y = y
                    q = quaternion_from_euler(0, 0, -PI/2)
                    p.pose.pose.orientation.x = q[0]
                    p.pose.pose.orientation.y = q[1]
                    p.pose.pose.orientation.z = q[2]
                    p.pose.pose.orientation.w = q[3]
                    p.twist.twist.linear.x = float(self.velocity)
                elif(t <= period):
                    x += l/(period*0.25)
                    p.pose.pose.position.x = x
                    p.pose.pose.position.y = y
                    q = quaternion_from_euler(0, 0, 0)
                    p.pose.pose.orientation.x = q[0]
                    p.pose.pose.orientation.y = q[1]
                    p.pose.pose.orientation.z = q[2]
                    p.pose.pose.orientation.w = q[3]
                    p.twist.twist.linear.x = float(self.velocity)

                waypoints.append(p)
                path_point = PoseStamped()
                path_point.pose.position.x = p.pose.pose.position.x
                path_point.pose.position.y = p.pose.pose.position.y
                base_path.poses.append(path_point)
            waypoints = list(reversed(waypoints))

        waypoints_1 = list(reversed(waypoints))
        return waypoints_1,base_path
        
    def velocity_set(self,waypoints):
        last = waypoints[-1]
        last.twist.twist.linear.x = 0
        for wp in waypoints[:-1][::-1]:
            wp.twist.twist.linear.x = float(self.velocity)

        return waypoints
    
    
    def publish(self):
        waypoints,base_path = self.load_waypoints()
        lane = Lane()
        lane.header.frame_id = '/odom'
        lane.header.stamp = rospy.Time(0)
        lane.waypoints = waypoints
        self.pub.publish(lane)
        self.path_pub.publish(base_path)
        rospy.loginfo("Waypoints publish finish")





if __name__ == "__main__":
    try:
        Complex_WaypointsLoader()
    except rospy.ROSInterruptException:
        rospy.logerr('Couldn not start waypointsLoader node.')