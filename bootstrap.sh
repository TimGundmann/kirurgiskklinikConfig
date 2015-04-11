#!/usr/bin/env bash

apt-get update
apt-get remove openjdk-6-jre-headless
apt-get remove openjdk-6-jre-lib
apt-get install -y openjdk-7-jre 
apt-get install -y tomcat7 tomcat7-admin

echo "<?xml version='1.0' encoding='utf-8'?><tomcat-users><role rolename='manager-gui'/><role rolename='manager-script'/><user username='tim' password='Prut1234' roles='manager-gui, manager-script'/></tomcat-users>" | sudo tee /var/lib/tomcat7/conf/tomcat-users.xml

sudo chown root:tomcat7 /var/lib/tomcat7/conf/tomcat-users.xml

sudo service tomcat7 restart