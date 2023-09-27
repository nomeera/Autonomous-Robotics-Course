#!/usr/bin/python3

import rospy
from std_msgs.msg import String

def Lisener():
    rospy.init_node("lisener")
    sub = rospy.Subscriber("msg_topic", String, callback)
    rospy.spin()


def callback(msg):
    rospy.loginfo("%s", msg.data)
    

if __name__ == "__main__":
    Lisener()