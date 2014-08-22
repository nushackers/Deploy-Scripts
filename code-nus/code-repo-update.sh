#!/bin/bash

cd /home/git/code-nus-repos
git pull
npm install
node update.js
cp /home/git/code-nus-repos/data.json /var/www/code.nushackers.org/scripts/data.json