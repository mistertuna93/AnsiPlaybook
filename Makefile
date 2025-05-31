.PHONY: run lint install

run:
	ansible-playbook -i inventories/production/hosts playbooks/site.yml

lint:
	ansible-lint playbooks/site.yml

install:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r collections/requirements.yml
