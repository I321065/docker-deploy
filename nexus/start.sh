#!/bin/bash
docker run --restart="always" -d -p 8081:8081 -p 8091:8091 --name nexus -v data:/nexus-data sonatype/nexus3
