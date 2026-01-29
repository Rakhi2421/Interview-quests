#!/bin/bash
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker ec2-user
sudo systemctl start docker
sudo systemctl enable docker
set -e
echo "---- Updating system ----"
sudo yum update -y
echo "---- Installing Java (OpenJDK 17 recommended for Jenkins) ----"
sudo yum install -y java-17-openjdk-devel
echo "---- Adding Jenkins repository ----"
sudo curl -fsSL https://pkg.jenkins.io/redhat-stable/jenkins.repo -o /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
echo "---- Installing Jenkins ----"
sudo yum install -y jenkins
echo "---- Enabling and starting Jenkins service ----"
sudo systemctl enable jenkins
sudo systemctl start jenkins
echo "---- Checking Jenkins status ----"
sudo systemctl status jenkins --no-pager
echo "---- Jenkins installation completed! ----"
echo "Access Jenkins at: http://<your_server_ip>:8080"
echo "Initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

 
