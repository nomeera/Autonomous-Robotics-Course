#!/usr/bin/python3

import rospy
from n_of_words_pkg.srv import count_words, count_wordsRequest, count_wordsResponse

def num_of_words(req):
    num_words = len(req.split(' '))
    print("Number of Words is: %d", num_words)
    return count_wordsResponse(num_words)

def count_words_service():
    # Initialize the service node
    rospy.init_node("count_words_service")
    # Create the service with the name "count_words_service" and the function to handle the request
    s = rospy.Service("count_words", count_words, num_of_words)
    #  Print a message indicating that the server is ready
    print("Ready to count number of words")
    # Spin to keep the node running
    rospy.spin()

if __name__ == "__main__":
    # Call the server function to start the server node
    count_words_service()