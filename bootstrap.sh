#!/usr/bin/env bash

apt-get update
apt-get install -y tomcat7 tomcat7-admin

sudo rm -rf /var/lib/tomcat7/webapps/ROOT
sudo ln -s /vagrant/kenneth /var/lib/tomcat7/webapps/ROOT
echo "<?xml version='1.0' encoding='utf-8'?><tomcat-users><role rolename='manager-gui'/><user username='tim' password='Prut1234' roles='manager-gui'/></tomcat-users>" | sudo tee /var/lib/tomcat7/conf/tomcat-users.xml