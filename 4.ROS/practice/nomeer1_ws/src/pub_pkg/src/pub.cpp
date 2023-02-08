#include <ros/ros.h>
#include <std_msgs/Int32.h>

int main(int argc, char** argv) // for ROS system to make node talk which other
{
    
    ros::init(argc, argv, "topic_publisher"); // inia
    ros::NodeHandle nh; // used to create and access topics, services, and parameters in the ROS system.
    ros::Rate rate(2);

    ros::Publisher pub;  // create publisher object
    pub = nh.advertise<std_msgs::Int32>("counter", 1000); // define message and topic that publisher object will use
    
    // code
    std_msgs::Int32 cout;
    cout.data = 0;

    while (ros::ok())
    {
        pub.publish(cout);
        ros::spinOnce();
        rate.sleep();
        ++cout.data;
    }


    return 0;
}
