#!/bin/bash

# Log file
LOGFILE=/var/log/install_jenkins.log

exec > $LOGFILE 2>&1

# Update the instance
sudo yum update -y

# Add Jenkins repo and import the GPG key
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Java and Jenkins
sudo yum upgrade -y
sudo dnf install java-17-amazon-corretto -y
sudo yum install jenkins -y

# Enable and start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins
