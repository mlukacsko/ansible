#!/usr/bin/bash




# Install packages
yum -y update 
yum install -y git 
yum install -y postgresql 

cd /home/ec2-user 
git clone https://github.com/mlukacsko/java-image-gallery.git 
git clone https://github.com/mlukacsko/ansible.git
chown -R ec2-user:ec2-user java-image-gallery
chown -R ec2-user:ec2-user ansible


# Start/enable services
systemctl stop postfix 
systemctl disable postfix 
systemctl start nginx
systemctl enable nginx
