#!/usr/bin/python3

import rospy
from cmplx_num_pkg.msg import cmplx
import random

def pub_cmplx():
    # node & topic
    rospy.init_node("pub_cmplx")
    pub = rospy.Publisher("cmplx_topic", cmplx, queue_size=1)
    rate = rospy.Rate(1)

    # message
    cmplxNum = cmplx()

    # publishing
    while not rospy.is_shutdown():
        cmplxNum.real = round(random.random() * 100,3)
        cmplxNum.imaginary = round(random.random() * 100,3)

        pub.publish(cmplxNum)
        rate.sleep()



if __name__ == "__main__":
    try:
        pub_cmplx()
    except rospy.ROSInterruptException:
        pass
