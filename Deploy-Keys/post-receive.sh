#!/bin/sh

git --work-tree=/home/git/keys --git-dir=/home/git/keys.git checkout -f

cd /home/git/keys/keys
cat * > ../authorized_keys
