#!/bin/bash
echo "Prepare NVIDIA Jetson Xavier NX"
echo "# Start APT UPDATE & UPDATE"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "# Install Pytorch 0.12.0"
wget https://developer.download.nvidia.com/compute/redist/jp/v50/pytorch/torch-1.12.0a0+2c916ef.nv22.3-cp38-cp38-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev libomp-dev
pip3 install Cython
pip3 install numpy
pip3 install torch-1.12.0a0+2c916ef.nv22.3-cp38-cp38-linux_aarch64.whl
echo "# Install Pytorch Complete"

echo "# Install torchvision 0.13.0"
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev -y
git clone --branch v0.13.0 https://github.com/pytorch/vision torchvision
cd torchvision
export BUILD_VERSION=0.13.0
python3 setup.py install --user
echo "# Install torchvision Complete"
cd ../

echo "# Install jtop"
sudo pip3 install -U jetson-stats

echo "# Check versions ..."
python3 pycode.py