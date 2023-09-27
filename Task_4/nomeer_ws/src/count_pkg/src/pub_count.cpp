#include <ros/ros.h>
#include <std_msgs/Int32.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv,"pub_count_cpp");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::Int32>("count_topic_cpp",1);
    ros::Rate rate(1);

    std_msgs::Int32 count;
    count.data = 0;

    while (ros::ok())
    {
        pub.publish(count);
        ros::spinOnce();
        rate.sleep();
        ++count.data;
    }

    return 0;
}