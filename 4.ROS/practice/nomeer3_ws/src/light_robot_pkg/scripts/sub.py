#!/usr/bin/python3

import rospy
from light_robot_pkg.msg import light_robot

def callback(msg):
    rospy.loginfo("new data recived")
    rospy.loginfo(msg)


rospy.init_node("subscriber")
rospy.Subscriber("sensor_topic", light_robot, callback)
rospy.spin()