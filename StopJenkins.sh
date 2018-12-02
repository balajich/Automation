#!/usr/bin/env bash
#Stop script for stopping local Jenkins
echo "Stopping Jenkins"
java -cp /home/mario/.jenkins/war/winstone.jar winstone.tools.WinstoneControl shutdown --host=localhost --port=8001

# Reload Jenkins
#$ java -cp $JENKINS_HOME/war/winstone.jar winstone.tools.WinstoneControl reload: --host=localhost --port=8001