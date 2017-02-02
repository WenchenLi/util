#!/usr/bin/env bash
#install_gym_universe_vncdriver

#go-vncdriver

# Needed for Ubuntu 14, not Ubuntu 16
sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable  # for newer golang
sudo apt-get update
sudo apt-get install -y python-dev make golang libjpeg-turbo8-dev

#And if you want OpenGL rendering support (you probably do, unless you're running on a headless server):
sudo apt-get install libx11-dev libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev \
  libxxf86vm-dev libgl1-mesa-dev mesa-common-dev

git clone https://github.com/openai/go-vncdriver.git
cd go-vncdriver
python build.py
sudo pip install -e .

#gym

git clone https://github.com/openai/gym.git
cd gym
sudo pip install -e .

#if install everything, later on if 

# sudo apt-get install -y python-numpy python-dev cmake zlib1g-dev libjpeg-dev xvfb libav-tools xorg-dev python-opengl libboost-all-dev libsdl2-dev swig
# sudo pip install -e '.[all]'

#universe

#ubuntu 16.04
sudo pip install numpy
sudo apt-get install golang libjpeg-turbo8-dev make

#install 
git clone https://github.com/openai/universe.git
cd universe
sudo pip install -e .
