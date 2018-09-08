#!/bin/bash
jenkinsHome="$DOCKER_HOME/jenkins/jenkins_home/"
echo $jenkinsHome
if [ ! -d "$jenkinsHome" ]; then
  mkdir -p $jenkinsHome
fi
sudo chown -R 1000 $jenkinsHome
sudo docker run -d -p 9080:8080 -p 50000:50000 --name jenkins --privileged=true  -v $DOCKER_HOME/jenkins/jenkins_home:/var/jenkins_home jenkins:latest
