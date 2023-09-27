#include <iostream>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char** argv)
{
    // create publisher node
    ros::init(argc, argv, "input_user_cpp");
    ros::NodeHandle nh; // to create a communication interface between your ROS node and the rest of the ROS network

    // create publisher object
    ros::Publisher pub;
    // pub object publish via /turtle1/cmd_vel object
    pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",1);
    ros::Rate rate(5); // publish twish with 1 hz rate

    // define twist object
    geometry_msgs::Twist twist;

    // ask user to input linear.x & angular.z
    while (ros::ok()) 
    {
        std::cout << "Enter linear.x value [2-6]: " ;
        std::cin >> twist.linear.x ;
        std::cout << "Enter angular.z value [2-6]: " ;
        std::cin >> twist.angular.z ;

        // error handling to check if user enter int value or no
        {
            // add code in this section
        }

        // ensure that linear.x & angular.z = [2-6]
        if (twist.linear.x  >= 2 && twist.linear.x <= 6 &&
            twist.angular.z >= 2 && twist.angular.z <= 6)
            break;
        else
            std::cout << "\nPLEASE ENTER VALUE FROM 2 TO 6\n";
            
    }
    
    // to ensure that node will publish msg just one time and prevent node to shutdown before publishing
    // rate.sleep return true after node jumped forward in time
    while(!rate.sleep())   
    {
        pub.publish(twist);
        ros::spinOnce();  // used to handle incoming ROS messages
    }



    return 0;
}