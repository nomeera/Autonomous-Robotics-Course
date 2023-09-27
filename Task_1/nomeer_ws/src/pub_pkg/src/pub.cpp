#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "publisher");
    ros::NodeHandle nh;
    ros::Rate rate(1);

    ros::Publisher pub;
    pub = nh.advertise<std_msgs::String>("string_topic",1);

    std_msgs::String msg;
    std::stringstream ss;
    ss << "I am Learning Robotics and ROS";
    msg.data = ss.str();
    
    while(ros::ok())
    {
        pub.publish(msg);
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}