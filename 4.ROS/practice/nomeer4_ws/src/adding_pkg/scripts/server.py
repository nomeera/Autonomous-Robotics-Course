#!/usr/bin/python3

# Import required libraries
import rospy
from adding_pkg.srv import adding, addingResponse, addingRequest

# Define a function to handle the add request
def handle_add_two_ints(req):
    # Print the values of x and y that are to be added
    print("Returning [%s + %s = %s]" % (req.x, req.y, (req.x + req.y)))
    # Return the sum of x and y in the response
    return addingResponse(req.x + req.y)  # send response to client

# Define a function to create the server node
def add_two_ints_server():
    # Initialize the node
    rospy.init_node("add_two_ints_server")
    # Create the service with the name "add_two_ints" and the function to handle the request
    s = rospy.Service("add_two_ints", adding, handle_add_two_ints)
    # Print a message indicating that the server is ready
    print("Ready to add two ints")
    # Spin to keep the node running
    rospy.spin()

if __name__ == "__main__":
    # Call the server function to start the server node
    add_two_ints_server()


# why server create as node and client not?
'''
In ROS, a node is an executable that communicates with other nodes to perform 
a specific task. In the case of the server, it is implemented as a node because 
it provides a service, which is a form of communication between nodes. 
The server node is responsible for accepting requests from clients, processing 
the requests, and returning responses to the clients.

On the other hand, the client is not implemented as a node because it is simply 
sending a request to the server and waiting for a response. The client does not have 
any ongoing responsibilities like the server, so it does not need to run as a node.


However, it is important to initialize the client using rospy.init_node() to create 
a node handle for the client so that it can interact with the ROS system. 
The node handle is used to perform operations such as sending requests to the server
and logging information.


'''