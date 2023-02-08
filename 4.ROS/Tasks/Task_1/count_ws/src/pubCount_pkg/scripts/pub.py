#!/usr/bin/python3

import rospy
from std_msgs.msg import Int32

def talker():
    # create node
    rospy.init_node("Talker") 
    # create topic
    pub = rospy.Publisher("count_topic", Int32, queue_size=1)
    rate = rospy.Rate(1)  # publish rate = 1 hz

    count_msg = 100
    while not rospy.is_shutdown():  # untill ROS shutdown
        count_msg += 1
        rospy.loginfo(count_msg)   # print count_msg on screen
        pub.publish(count_msg)     # publish count_msg on /count_topic
        rate.sleep()

if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInterruptException:
        pass