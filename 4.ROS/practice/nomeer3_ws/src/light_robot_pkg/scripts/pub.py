#!/usr/bin/python3

import rospy
from light_robot_pkg.msg import light_robot
import random

# create node
rospy.init_node("publisher")
# create publihser object that publish via sensor topic
pub = rospy.Publisher("sensor_topic", light_robot, queue_size=1)
rate = rospy.Rate(0.5)

i = 0
while not rospy.is_shutdown():
    sensor = light_robot()
    sensor.id = 1
    sensor.name = "parking_01"
    sensor.temperature = 24.33 + (random.random()*2)
    sensor.humidity = 33.42 + (random.random()*2)

    rospy.loginfo("I puplish\n")
    rospy.loginfo(sensor)
    rospy.loginfo("\n")
    pub.publish(sensor)
    rate.sleep()
    i+=1
