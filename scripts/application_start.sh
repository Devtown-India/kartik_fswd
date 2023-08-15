#!/bin/bash

#give permission for everything in the api directory
sudo chmod -R 777 /home/ec2-user/fswd_server

#navigate into our working directory where we have all our github files
cd /home/ec2-user/fswd_server

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm

npm install
npm i pm2 -g
pm2 kill
pm2 start dist/bundle.js -f --name=server
