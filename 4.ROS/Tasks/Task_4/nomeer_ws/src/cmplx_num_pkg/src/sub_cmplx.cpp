#include <ros/ros.h>
#include <cmplx_num_pkg/cmplx.h>


void callback(const cmplx_num_pkg::cmplx::ConstPtr& cmplxNum)
{
    ROS_INFO("(%.3fi + %.3fj)", cmplxNum->real, cmplxNum->imaginary);

}
int main(int argc, char** argv)
{
    ros::init(argc, argv, "sub_cmplx_cpp");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("cmplx_topic_cpp",1,callback);
    ros::spin();

    return 0;
}