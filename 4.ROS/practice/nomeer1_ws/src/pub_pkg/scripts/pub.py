#!/usr/bin/python3

import rospy
from std_msgs.msg import String

def Talker():
    rospy.init_node("talker")
    pub = rospy.Publisher("tlk_topic", String, queue_size=1)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        hello_str = "Hello ROS ^_^"
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

if __name__ == "__main__":
    try:
        Talker()
    except rospy.ROSInterruptException:
        pass
