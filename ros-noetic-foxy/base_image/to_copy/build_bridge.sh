#!/bin/bash
ROS1_WS_PATH=~/ros1_ws/
ROS2_WS_PATH=~/ros2_ws/
ROS1_INSTALL_PATH=/opt/ros/noetic/
ROS2_INSTALL_PATH=/opt/ros/foxy/

cd $ROS2_WS_PATH
colcon build --symlink-install --packages-skip ros1_bridge
source $ROS1_INSTALL_PATH/setup.bash
source $ROS2_INSTALL_PATH/setup.bash
source $ROS1_WS_PATH/devel/setup.bash
source $ROS2_WS_PATH/install/local_setup.bash
colcon build --symlink-install --packages-select ros1_bridge --cmake-force-configure
