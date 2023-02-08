#include <ros/ros.h>
#include <nav_msgs/Odometry.h>

void printOdomData(const nav_msgs::Odometry::ConstPtr& odom)
{
    // print pose and twist from Odometry
    double x = odom->pose.pose.position.x;
    double y = odom->pose.pose.position.y;
    double z = odom->pose.pose.position.z;
    ROS_INFO("Position: [%f, %f, %f]", x, y, z);

    double qx = odom->pose.pose.orientation.x;
    double qy = odom->pose.pose.orientation.y;
    double qz = odom->pose.pose.orientation.z;
    double qw = odom->pose.pose.orientation.w;
    ROS_INFO("Orientation: [%f, %f, %f, %f]", qx, qy, qz, qw);

    double vx = odom->twist.twist.linear.x;
    double vy = odom->twist.twist.linear.y;
    double vz = odom->twist.twist.linear.z;
    ROS_INFO("Linear Velocity: [%f, %f, %f]", vx, vy, vz);

    double wx = odom->twist.twist.angular.x;
    double wy = odom->twist.twist.angular.y;
    double wz = odom->twist.twist.angular.z;
    ROS_INFO("Angular Velocity: [%f, %f, %f]", wx, wy, wz);
}

void callback(const nav_msgs::Odometry::ConstPtr& odom)
{
    printOdomData(odom);
}

int main(int argc, char** argv)
{
    // creat subscribe node
    ros::init(argc, argv, "sub_odom_cpp");
    ros::NodeHandle nh;

    // create subscribe object
    ros::Subscriber sub;
    // subscribe /odom topic 
    sub = nh.subscribe("/odom",1000, callback);
    ros::spin();

    return 0;
}