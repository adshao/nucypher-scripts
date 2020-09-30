#!/bin/bash

# CentOS

setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=permissive/' /etc/selinux/config

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

git clone https://github.com/adshao/nucypher-scripts
cp nucypher-scripts/docker-compose.yaml .

cat <<EOF >> ~/.bashrc
alias geth='docker-compose run --rm geth /usr/local/bin/geth'
alias clef='docker-compose run --rm clef'
alias nucypher='docker-compose run --rm nucypher nucypher'
alias ursula='docker-compose run --rm nucypher nucypher ursula'
EOF
