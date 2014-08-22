#!/bin/sh

source /home/git/.rvm/scripts/rvm

git --work-tree=/home/git/code-nus --git-dir=/home/git/code-nus.git checkout -f

cd /home/git/code-nus
npm install
gulp build
cp -r dest/* /var/www/code.nushackers.org/
cp /home/git/code-nus-repos/data.json /var/www/code.nushackers.org/app/scripts/data.json
