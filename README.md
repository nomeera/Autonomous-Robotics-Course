# Autonomous Robotics Course
## Instructor: [Eng.Khaled Gabr](https://github.com/khaledgabr77) | Robotics Corner Academy

![Course Level](https://img.shields.io/badge/Level-Beginner-green.svg)
![ROS](https://img.shields.io/badge/skills-ROS-green.svg)
![Robotics](https://img.shields.io/badge/skills-Robotics-green.svg)
![Language](https://img.shields.io/badge/Language-Python-blue.svg)
![Language](https://img.shields.io/badge/Language-C++-blue.svg)

<details>
  <summary>click to show course content</summary>
  
    ### Course Content
  
    - Introduction to Linux, Terminal, and Shell
    - Python Programming
    - C++ Programming
    - Introduction to ROS and ROS installation
    - ROS Core Concepts:
      - Master
      - Nodes
      - Topics
      - Messages
      - Services
    - ROS Labs (rostopic, rosmsg, rosnode, rosservice)
    - Creating a ROS WorkSpace and Packages
    - Writing a ROS Publisher and Subscriber
    - Writing a ROS Service and Client
    - Creating a Custom ROS Message
    - ROS Tools:
      - Launch files
      - ROS Bag
      - RQT
      - Remap
    - Gazebo, RVIZ: creating a custom robot using Gazebo
    - Creating a custom robot using URDF
    - Adding Gazebo plugins with ROS
    - Kinematics with ROS
    - Turtlebot3 Lab
    - ROS project
    - TF ROS
    - 2D and 3D Frames
    - Transformations
    - Localization:
      - Kalman Filter
      - MCL
      - AMCL Package
    - SLAM
    - Navigation
</details>

<img src="https://cdn-icons-png.flaticon.com/512/2814/2814666.png" width="30" />

## ROS Tasks

> Note: All codes written in C++ and Python

### Task1
* [count_ws](4.ROS/Tasks/Task_1/count_ws)
  * publisher and subscriber to start count from 100 until the user uses CTRL C.
  * ![](4.ROS/Tasks/Task_1/count_ws/rosgraph.png)
* [nomeer_ws](4.ROS/Tasks/Task_1/nomeer_ws)
  * publisher and subscriber using String msg("I am Learning Robotics and ROS") until the user uses CTRL C.
  * ![](4.ROS/Tasks/Task_1/nomeer_ws/rosgraph.png)
  
---
### Task2
* [nomeer_robot_ws](4.ROS/Tasks/Task_2/nomeer_robot_ws)
  * move_pkg with robot_py.launch file.
  * publish data to the /cmd_vel topic.
  * Modify the code in order to print the odometry of the robot.
  * Python file that creates a publisher that indicates the age of the robot
  
    ![](4.ROS/Tasks/Task_2/nomeer_robot_ws/rosgraph.png)

---
### Task3
* [control_nomeer_roboot_ws](4.ROS/Tasks/Task_3/control_nomeer_roboot_ws)
  * Users can input a linear (x) velocity in the range [2,6] (floating point allowed)
  * Users can input an angular (z) velocity [2,6] (floating point allowed)
  * another node to publish data to the /cmd_vel topic
  
  ![](4.ROS/Tasks/Task_3/control_nomeer_roboot_ws/rosgraph.png)

---
### Task4
* [nomeer_ws](4.ROS/Tasks/Task_4/nomeer_ws)
  * publisher and subscriber to count from 0 until the user uses CTRL C.
  * message nodes that publish Complex(real, imaginary) numbers.
  * a service that can count the number of words, ex: i love you >> 3, you are the best >> 4. [![](https://img.shields.io/badge/-help%20wanted-critical.svg)](https://github.com/nomeera/Autonomous-Robotics-Course/tree/master/4.ROS/Tasks/Task_4/nomeer_ws/src/n_words_pkg)

  ![](4.ROS/Tasks/Task_4/nomeer_ws/rosgraph.png)
  
---
### Task5
* [gazebo](/4.ROS/Tasks/Task_5/src)
  * first gazebo task
  * create Model(Robot) & Environment
  * Adding the Environment + Model  inside a World
  


