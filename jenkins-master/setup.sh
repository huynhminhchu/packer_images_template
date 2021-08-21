#!/bin/bash 
yum remove -y java yum install -y java-1.8.0-openjdk
  chkconfig jenkins on
 
yum install -y git
  mkdir /var/lib/jenkins/.ssh
  touch /var/lib/jenkins/.ssh/known_hosts
  chown -R jenkins:jenkins /var/lib/jenkins/.ssh
  chmod 700 /var/lib/jenkins/.ssh
  mv /tmp/id_rsa /var/lib/jenkins/.ssh/id_rsa
  chmod 600 /var/lib/jenkins/.ssh/id_rsa
  chown -R jenkins:jenkins /var/lib/jenkins/.ssh/id_rsa
 
mkdir -p /var/lib/jenkins/init.groovy.d
  mv /tmp/.groovy /var/lib/jenkins/init.groovy.d/
  mv /tmp/jenkins /etc/sysconfig/jenkins 
  chmod +x /tmp/install-plugins.sh
  bash /tmp/install-plugins.sh
  service jenkins start
