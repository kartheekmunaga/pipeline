#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/remote-key /tmp/.auth prod-user@jenkins-testing-remote.eastus.cloudapp.azure.com:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish prod-user@jenkins-testing-remote.eastus.cloudapp.azure.com:/tmp/publish
ssh -i /opt/prod prod-user@jenkins-testing-remote.eastus.cloudapp.azure.com"/tmp/publish"
