#include <ros/ros.h>
#include <move_pkg/Age.h>

void callback(const move_pkg::Age::ConstPtr& age)
{
    float days = age->days;
    float months = age->months;
    float years = age->years;
    ROS_INFO("\ndays = %f\nmonths = %f\ndays = %f\n", days, months, years);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "sub_age_node_cpp");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("age_topic_cpp", 1, callback);
    ros::spin();

    return 0;
}