#!/usr/bin/python3
'''
use custom message Age.msg to define robot age
publish robot age via /age_topic
'''

import rospy
from move_pkg.msg import Age

def pub_age():
    # create pub node
    rospy.init_node("pub_age_node")
    # create publisher object and publish via /age_topic
    pub = rospy.Publisher("age_topic",Age,queue_size=1)
    rate = rospy.Rate(1)

    # define robot age
    age = Age()
    age.days   = 17
    age.months = 3
    age.years = 22

    # publish message
    while not rospy.is_shutdown():
        pub.publish(age)
        rate.sleep()




if __name__ == "__main__":
    try:
        pub_age()
    except rospy.ROSInterruptException:
        pass
