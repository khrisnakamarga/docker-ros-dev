FROM ros:melodic-ros-core

RUN apt-get update && apt-get install -y \
    tmux

# Sourcing ROS workspace
RUN echo "source /opt/ros/melodic/setup.bash" >> /root/.bashrc

RUN mkdir -p /catkin_ws/src

WORKDIR /catkin_ws
