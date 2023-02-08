#include <ros/ros.h>
#include <std_msgs/Int32.h>

// defince callback function
void counterCallback(const std_msgs::Int32::ConstPtr& msg)
{
    ROS_INFO("%d", msg->data);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "tobic_subscriber"); // create node
    ros::NodeHandle nh;  // NodeHandle make ros component (node, topic) interact with ROS system

    // create subscriber object
    ros::Subscriber sub;
    sub = nh.subscribe("counter", 1000, counterCallback);
    ros::spin(); // create a loop that will keep the program in execution


    return 0;
}