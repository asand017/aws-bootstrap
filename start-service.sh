#!/bin/bash -xe
exec > /tmp/start-service.log 2>&1
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
npm run start