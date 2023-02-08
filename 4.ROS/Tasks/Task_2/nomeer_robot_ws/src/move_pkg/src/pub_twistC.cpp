#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char** argv)
{
    // create publisher node
    ros::init(argc, argv, "pub_twist_cpp");
    ros::NodeHandle nh; // to create a communication interface between your ROS node and the rest of the ROS network

    // create publisher object
    ros::Publisher pub;
    // pub object publish via /turtle1/cmd_vel object
    pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",1);
    ros::Rate rate(1); // publish twish with 1 hz rate

    // define twist msg
    geometry_msgs::Twist twist;
    twist.linear.x  = 1;
    twist.angular.z = 1; // robot will rotate in circle

    // publish msg
    while(ros::ok())
    {
        pub.publish(twist);
        ros::spinOnce();  // used to handle incoming ROS messages
        rate.sleep(); //  ensure that node publish with 1 hz
        
    }

    return 0;
}