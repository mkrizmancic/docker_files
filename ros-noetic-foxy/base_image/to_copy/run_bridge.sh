#!/bin/bash
ROS1_INSTALL_PATH=/opt/ros/noetic/
ROS2_INSTALL_PATH=/opt/ros/foxy/

# Source ROS 1 first:
source ${ROS1_INSTALL_PATH}/setup.bash
# Source ROS 2 next:
source ${ROS2_INSTALL_PATH}/setup.bash

export ROS_MASTER_URI=http://localhost:11311
ros2 run ros1_bridge dynamic_bridge