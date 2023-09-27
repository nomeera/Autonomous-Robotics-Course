#!/usr/bin/python3

import rospy
from std_msgs.msg import Int32

def callback(count):
    rospy.loginfo("\n")
    rospy.loginfo(count)

def sub_age():
    rospy.init_node("sub_count")
    sub = rospy.Subscriber("count_topic", Int32,callback)
    rospy.spin()
    

if __name__ == "__main__":
    sub_age()