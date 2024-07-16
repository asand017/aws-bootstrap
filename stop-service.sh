#!/bin/bash -xe
exec > /tmp/stop-service.log 2>&1
source /home/ec2-user/.bash_profile
if [ -d "/home/ec2-user/app/release" ]; then
    cd /home/ec2-user/app/release && \
    npm run stop
fi