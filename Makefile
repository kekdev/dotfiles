.PHONY: new-install
new-install: install-deps run-playbook

.PHONY: install-deps
install-deps:
	sudo pacman -S --noconfirm python-pip
	pip3 install --user --upgrade ansible setuptools

.PHONY: run-playbook
run-playbook:
	ansible-playbook install.yml