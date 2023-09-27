#include "ros/ros.h"
#include "std_msgs/Int32.h"

// callback function to handle messgae
void callback(const std_msgs::Int32::ConstPtr& msg)  // ConstPtr: smart pointer that provides automatic memory management for the message.
{
    ROS_INFO("count = %d", msg->data); // print msg on screen | -> point to class
}

int main(int argc, char** argv)
{   
    // create node
    ros::init(argc, argv, "Subscriber");
    ros::NodeHandle nh;

    // create subscriber object
    ros::Subscriber sub;
    // subscribe message from counter topic
    sub = nh.subscribe("counter", 1, callback);
    ros::spin();

    return 0;
}