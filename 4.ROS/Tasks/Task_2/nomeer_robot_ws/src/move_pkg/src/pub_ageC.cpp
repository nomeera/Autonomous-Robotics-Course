#include <ros/ros.h>
#include <move_pkg/Age.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv,"pub_age_node_cpp");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<move_pkg::Age>("age_topic_cpp",1);
    ros::Rate rate(1);

    move_pkg::Age age;
    age.days = 17;
    age.months = 3;
    age.years = 22;

    while (ros::ok())
    {
        pub.publish(age);
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}