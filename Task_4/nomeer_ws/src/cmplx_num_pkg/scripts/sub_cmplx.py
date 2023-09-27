#!/usr/bin/python3

import rospy
from cmplx_num_pkg.msg import cmplx


def callback(cmplx):
    rospy.loginfo("(%.3fi + %.3fj)", cmplx.real, cmplx.imaginary)
def sub_cmplx():
    rospy.init_node("sub_cmplx")
    sub = rospy.Subscriber("cmplx_topic", cmplx, callback)
    rospy.spin()


if __name__ == "__main__":
    sub_cmplx()