Deploy-Scripts
==============

Deploy scripts for various things on nushackers.org.

# Hackerschool Website

	mkdir /home/git/hackerschool.git
	cd /home/git/hackerschool.git
	git init --bare
	cd ../
	mkdir hackerschool
	cd hackerschool
	virtualenv env
	. env/bin/activate
	pip install -r requirements.txt
	deactivate

# Deploy Keys

	mkdir /home/git/.ssh
	mkdir /home/git/keys.git
	cd /home/git/keys.git
	git init --bare
	cd ../
	mkdir keys
	touch keys/authorized_keys
	ln -s /home/git/keys/authorized_keys /home/git/.ssh/authorized_keys
