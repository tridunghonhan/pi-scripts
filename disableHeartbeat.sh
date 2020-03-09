#!/bin/bash

CONFIG_FILE=/home/pinpoint/Geoguard/git/gc-indoor-pibeacon-ssh-service/ssh-tunnel-service/config.js

sed -i "s/presenceTimeout: 10,/presenceTimeout: 0/" $CONFIG_FILE 
sed -i "s/heartbeatInterval: 2//" $CONFIG_FILE 

pm2 flush ssh-tunnel-service
pm2 restart ssh-tunnel-service
pm2 log ssh-tunnel-service
