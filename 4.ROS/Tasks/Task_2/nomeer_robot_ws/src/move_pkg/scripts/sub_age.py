#!/usr/bin/python3

import rospy
from move_pkg.msg import Age

def callback(age):
    rospy.loginfo("\n")
    rospy.loginfo(age)

def sub_age():
    rospy.init_node("sub_age_node")
    sub = rospy.Subscriber("age_topic", Age,callback)
    rospy.spin()




if __name__ == "__main__":
    sub_age()