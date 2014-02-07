#!/bin/sh

git --work-tree=/home/git/hackerschool --git-dir=/home/git/hackerschool.git checkout -f

cd /home/git/hackerschool
. env/bin/activate
pip install -r requirements.txt
python freeze.py
cp -r build/* /var/www/school.nushackers.org
deactivate

