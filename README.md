Deploy-Scripts
==============

Deploy scripts for various things on nushackers.org.

This is a back-up. Changes here do not propagate.

# How to deploy

Firstly all our projects are on github, so the `origin` of the project is the github repo. To enable deployment, add a new `remote` which correspond to our deploy server, for example:

```bash
git remote add deploy git@deploy.nushackers.org:<git-repo-on-deploy-server>.git
```

`<git-repo-on-deploy-server>.git` correspond to the git repo on our deploy server, which is documented below(if you ever add a new repo, document it or commit seppuku).

After that, the workflow should be:

1. Modify stuff, commit
2. Push to github repo
3. If conflict, pull and fix, go to 1.
4. If everything is ok, push to deploy server by

```bash
git push deploy master
```

# Deploy repos

```
nushackers-site: blog.git
hackerschool: hackerschool.git
code-nus: code-nus.git
```

# Example of setting up on the server side

	# hackerschool website
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

# How deploy keys were set up

	mkdir /home/git/.ssh
	mkdir /home/git/keys.git
	cd /home/git/keys.git
	git init --bare
	cd ../
	mkdir keys
	touch keys/authorized_keys
	ln -s /home/git/keys/authorized_keys /home/git/.ssh/authorized_keys
