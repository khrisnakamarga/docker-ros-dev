## ROS Melodic ROS Workspace

# Description
This repository contains the files necessary to build a Docker container that 
runs on ROS Melodic and to launch the container that contains your catkin
package to be built in a catkin workspace.

# Instructions

1. If you don't have the container built: `./ros-workspace-build.sh`
2. Once you have the container: `./ros-workspace-launch.sh`
3. The console will ask you to specify the path to the catkin workspace
   you are currently developing.

   For example: I'm developing the catkin workspace: 

   `/home/khrisnakamarga/code/grover_ws/`

   and I'd like to develop the grover package under `grover_ws/src/grover`

   Then, I would type: `code/grover_ws/src` to mount my packages to the ROS
   workspace on my Docker container.
4. Once the Docker container is launched and attached, you can simply `catkin_make`
   and test your code on the Docker container.
5. The Docker container you are attached to is running tmux!
