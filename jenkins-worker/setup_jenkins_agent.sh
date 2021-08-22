#!/bin/bash
yum remove -y java
yum update -y
yum install -y git docker java-1.8.0-openjdk
usermod -aG docker ec2-user
systemctl enable docker
