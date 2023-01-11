#!/bin/bash

su - ec2-user

# set up the npm path
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# navigate to the application directory
cd /home/ec2-user/angular-app

npm install pm2 -g

npm run stop-pm2

npm run build

npm run start-pm2


#ng serve
