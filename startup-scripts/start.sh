#!/usr/bin/bash




# Install packages
yum -y update 
yum install -y git 
yum install - y postgresql
yum install -y postgresql
yum install -y gcc
yum install -y python3-devel
yum install -y postgresql-devel
yum install -y jq # json parser
pip3 install psycopg2
pip3 install boto3

cd /home/ec2-user
pip3 install --user boto3
pip3 install --user psycopg2

cd /home/ec2-user 
git clone https://github.com/mlukacsko/java-image-gallery.git 
git clone https://github.com/mlukacsko/ansible.git
chown -R ec2-user:ec2-user java-image-gallery
chown -R ec2-user:ec2-user ansible

cd /home/ec2-user/ansible
ansible-playbook postgres.yaml

# Start/enable services
systemctl stop postfix 
systemctl disable postfix 
