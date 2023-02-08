#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char** argv)
{
    // create node 
    ros::init(argc, argv, "move_turtle");
    ros::NodeHandle nh;
    // create publisher object to publish via cmd_vel topic
    ros::Publisher pub;
    pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);
    ros::Rate rate(5);

    // define twist message
    geometry_msgs::Twist move;
    move.linear.x  = 0.5; 
    move.angular.z = 0.5;

    while(ros::ok())
    {
        pub.publish(move);
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}