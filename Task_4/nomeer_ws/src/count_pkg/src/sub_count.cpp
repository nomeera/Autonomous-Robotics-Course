#include <ros/ros.h>
#include <std_msgs/Int32.h>

void callback(const std_msgs::Int32::ConstPtr& count)
{
    ROS_INFO("count: %d", count->data);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "sub_count_cpp");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("count_topic_cpp", 1, callback);
    ros::spin();

    return 0;
}