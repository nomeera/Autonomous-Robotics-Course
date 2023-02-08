#!/usr/bin/python3

import rospy
from std_msgs.msg import String

def Talker():
    rospy.init_node("talker")
    pub = rospy.Publisher("msg_topic", String, queue_size=1)
    rate = rospy.Rate(1)

    msg = "I am Learning Robotics and ROS"
    while not rospy.is_shutdown():
        pub.publish(msg)
        rate.sleep()

if __name__ == "__main__":
    try:
        Talker()
    except rospy.ROSInterruptException:
        pass