#!/usr/bin/bash

sudo yum install -y postgresql
sudo yum install -y gcc
sudo yum install -y python3-devel
sudo yum install -y postgresql-devel
sudo yum install -y jq # json parser
sudo pip3 install psycopg2
sudo pip3 install boto3
cd /home/ec2-user
pip3 install boto3 --user
pip3 install psycopg2 --user
cd /home/ec2-user
git clone https://github.com/cdavidshaffer/java-image-gallery.git
git clone https://github.com/mlukacsko/ansible.git
chown -R ec2-user:ec2-user java-image-gallery
chown -R ec2-user:ec2-user ansible


export IMAGE_GALLERY_BOOTSTRAP_VERSION="1.0"
aws s3 cp s3://edu.au.cc.image-gallery-configuration/ec2-prod-latest.sh ./
/usr/bin/bash ec2-prod-1.0.sh
