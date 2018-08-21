#!/bin/bash

ip=`aws ec2 describe-instances --filters "Name=tag:Name,Values=om_terra_ELK" | grep PublicIpAddress | awk -F\" '{print $4}'`
echo $ip > /var/lib/jenkins/ansible/hosts
