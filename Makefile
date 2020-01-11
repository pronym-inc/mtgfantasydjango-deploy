export VAGRANT_GIT_EMAIL=$(shell git config --get user.email)
export VAGRANT_GIT_NAME=$(shell git config --get user.name)

spinup:
	echo "71  mtgfantasydjango.local" | sudo tee -a /etc/hosts
	cp ~/.ssh/id_rsa git_ssh_key
	vagrant up
	sleep 5s
	open -a "Google Chrome" http://mtgfantasydjango.local
update:
	vagrant ssh -c "sudo sudo -u mtgfantasydjango git -C /webapps/mtgfantasydjango/src/mtgfantasydjango pull"
	vagrant ssh -c "sudo sudo -u mtgfantasydjango HOME=/home/mtgfantasydjango /webapps/mtgfantasydjango/bin/pip install -r /webapps/mtgfantasydjango/src/mtgfantasydjango/requirements.pip --upgrade"
	vagrant ssh -c "sudo sudo -u mtgfantasydjango /webapps/mtgfantasydjango/bin/python /webapps/mtgfantasydjango/bin/manage.py migrate"