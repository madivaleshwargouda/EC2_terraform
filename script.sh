#!/bin/bash
sudo apt update -y
sudo apt-get update -y
sudo apt update -y
sudo apt install git
sudo apt upgrade -y
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl reload nginx
sudo systemctl enable nginix
sudo apt-get update -y
sudo apt-get install openjdk-11-jdk -y
sudo apt-get install -y tomcat9
sudo apt-get install -y tomcat9-admin  --httpPort=8080
sudo apt upgrade -y
sudo apt-get install openjdk-11-jdk
sudo apt-get install git maven -y
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
java -jar jenkins.war --httpPort=8082
sudo apt update -y
sudo apt install mysql-server -y
sudo systemctl start mysql
