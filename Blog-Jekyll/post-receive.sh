#!/bin/sh

git --work-tree=/home/git/blog --git-dir=/home/git/blog.git checkout -f

cd /home/git/blog
jekyll build
cp -r _site/* /var/www/www.nushackers.org
