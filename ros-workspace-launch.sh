#!/bin/bash

read -p "specify the path to your catkin_ws/src: /home/${USER}/" packages

docker stop ros_ws
docker rm ros_ws

docker run -it \
       --network host \
       --name ros_ws \
       --volume="/home/${USER}/${packages}:/catkin_ws/src" \
       kkamarga/ros:melodic-ros-core \
       tmux
