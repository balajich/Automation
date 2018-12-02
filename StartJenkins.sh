#!/usr/bin/env bash
# Starts local Jenkins Server
echo "Starting Jenkins with admin port"
java -jar /home/mario/soft/jenkins.war --controlPort=8001

# Start on specific port.
#java -jar jenkins.war --httpPort=8088