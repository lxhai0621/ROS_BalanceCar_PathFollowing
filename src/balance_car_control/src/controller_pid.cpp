#include "ros/ros.h"
#include "balance_car_control/control_param.h"
struct Control_params
{
    double Control_Left;
    double Control_Right;
}Control_wheels;

void Vertical(balance_car_control::control_param::Request& req)
{
    double Vertical_P = 0.04;
    double Vertical_D = 0.4;
    double bias=0;
    double balance;
    bias = req.pitch - 0.01;
    balance = Vertical_P * bias + Vertical_D * req.pitchAngVelocity;
    Control_wheels.Control_Left = balance;
    Control_wheels.Control_Right = balance;
}

void Speed(balance_car_control::control_param::Request& req)
{
    double Speed_P = 0.025;
    double Speed_I = 0.00027;
    static double Speed_Velocity,Speed_Filtered = 0,Speed_Error = 0,Speed_Integral = 0;

    Speed_Error = (req.leftWheelVelocity + req.rightWheelVelocity) / 2 - req.dst_vel;
    Speed_Filtered = Speed_Filtered * 0.8 + Speed_Error * 0.2;
    Speed_Integral += Speed_Filtered;
    Speed_Velocity = Speed_Filtered * Speed_P + Speed_Integral * Speed_I;
    Control_wheels.Control_Left += Speed_Velocity;
    Control_wheels.Control_Right += Speed_Velocity; 
}

void Turn(balance_car_control::control_param::Request& req)
{
    double Turn_P = 1.6;
    double Turn_I = 0.016;
    static double Turn_Velocity,Turn_Filtered = 0,Turn_Error = 0,Turn_Integral = 0;
    Turn_Error = req.yawAngVelocity - req.dst_yaw;
    Turn_Filtered = Turn_Filtered * 0.8 + Turn_Error * 0.2;
    Turn_Integral += Turn_Filtered;
    Turn_Velocity = Turn_Filtered * Turn_P + Turn_Integral * Turn_I;
    Control_wheels.Control_Left += Turn_Velocity;
    Control_wheels.Control_Right -= Turn_Velocity;

}

bool doPID(balance_car_control::control_param::Request& req, balance_car_control::control_param::Response& resp)
{
    Vertical(req);
    Speed(req);
    Turn(req);
    resp.leftTorque = Control_wheels.Control_Left;
    resp.rightTorque =Control_wheels.Control_Right;
    return true;
}

int main(int argc, char **argv) {

    ros::init(argc, argv, "controller");
    ros::NodeHandle nh;

    ros::ServiceServer server = nh.advertiseService("control_param", doPID);
    ROS_INFO("my controller launched.....");
    ros::spin();
    return 0;
}