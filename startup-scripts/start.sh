#!/usr/bin/bash




# Install packages
yum -y update 
yum install -y tree python3
curl -O https://bootstrap.pypa.io/get-pip.py
yum -y install python-pip
yum install -y gcc
pip install psycopg2-binary
pip install psycopg2
pip install ansible
yum install -y postgresql 
pip install boto3 --user
yum install -y git 


cd /home/ec2-user 
git clone https://github.com/mlukacsko/java-image-gallery.git 
git clone https://github.com/mlukacsko/ansible.git
chown -R ec2-user:ec2-user java-image-gallery
chown -R ec2-user:ec2-user ansible


# Start/enable services
systemctl stop postfix 
systemctl disable postfix 
