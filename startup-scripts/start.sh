#!/usr/bin/bash




# Install packages
yum -y update 
<<<<<<< HEAD
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
=======
yum install -y git 
yum install - y postgresql
yum install -y postgresql
yum install -y gcc
yum install -y python3-devel
yum install -y postgresql-devel
yum install -y jq # json parser
pip3 install psycopg2
pip3 install boto3
>>>>>>> cd66c9bb8761e89338b8f4c8bb5d192aa96967ad

cd /home/ec2-user
pip3 install --user boto3
pip3 install --user psycopg2

#Clone git
cd /home/ec2-user 
git clone https://github.com/mlukacsko/java-image-gallery.git 
git clone https://github.com/mlukacsko/ansible.git
chown -R ec2-user:ec2-user java-image-gallery
chown -R ec2-user:ec2-user ansible

# Start/enable services
systemctl stop postfix 
systemctl disable postfix 
