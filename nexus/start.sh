#!/bin/bash
sudo docker run --restart="always" -d -p 9081:8081 -p 9091:8091 --name nexus -v $DOCKER_HOME/nexus/nexus-data:/nexus-data sonatype/nexus3
