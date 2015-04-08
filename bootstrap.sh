#!/usr/bin/env bash

apt-get update
apt-get install -y tomcat7

sudo rm -rf /var/lib/tomcat7/webapps/ROOT
sudo ln -s /vagrant/kenneth /var/lib/tomcat7/webapps/ROOT
