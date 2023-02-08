#include <ros/ros.h>
#include <light_robot_pkg/age.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "publish_age");
    ros::NodeHandle nh;

    ros::Publisher pub;
    pub = nh.advertise<light_robot_pkg::age>("age_topic", 1);
    ros::Rate rate(2);

    light_robot_pkg::age Age;
    Age.days = 17;
    Age.months = 3;
    Age.years = 22;

    while (ros::ok())
    {
        ROS_INFO("%f - %f - %f", Age.days, Age.months, Age.years);
        pub.publish(Age);
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}