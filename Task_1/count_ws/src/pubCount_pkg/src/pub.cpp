#include <ros/ros.h>
#include <std_msgs/Int32.h>

int main(int argc, char** argv)  // argc & argv to make node conect each other in ROS system
{
    // crate node
    ros::init(argc, argv, "Publisher");
    ros::NodeHandle nh; 
    ros::Rate rate(1); // publish rate = 1 hz
    // create publisher object
    ros::Publisher pub;
    // publisher object publisher via counter topic 
    pub = nh.advertise<std_msgs::Int32>("counter", 1);

    std_msgs::Int32 count;
    count.data = 100; // create count msg

    while (ros::ok())  // loop until ROS shutdowm
    {
        pub.publish(count);  // publish msg
        ros::spinOnce(); //
        rate.sleep();  // to make sure that we publish with 1 hz
        ++count.data; 
    } 

    return 0;
}