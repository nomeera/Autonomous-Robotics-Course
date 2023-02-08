#include <ros/ros.h>
#include <cmplx_num_pkg/cmplx.h>
#include <cstdlib>
int main(int argc, char** argv)
{
    // node & topic
    ros::init(argc, argv, "pub_cmplx_cpp");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<cmplx_num_pkg::cmplx>("cmplx_topic_cpp",1);
    ros::Rate rate(1);

    // message
    cmplx_num_pkg::cmplx cmplxNum;
    
    while (ros::ok())
    {
        srand(time(0));
        cmplxNum.real = ( (float)rand() / RAND_MAX) * 100;
        cmplxNum.imaginary = ( (float)rand() / RAND_MAX) * 100;
        pub.publish(cmplxNum);
        ros::spinOnce();
        rate.sleep();        
    }


    return 0;
}