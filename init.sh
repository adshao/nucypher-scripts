#!/bin/bash

# CentOS

yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum install -y wget tmux iptables git python38 python3-devel
yum install -y docker-ce docker-ce-cli containerd.io iptables
iptables -t nat -N DOCKER

systemctl start docker
systemctl enable docker

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py
pip install docker-compose

mkdir -p /root/geth/data /root/clef/data /root/nucypher/data
