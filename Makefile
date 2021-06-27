test:

install:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i provisioning/hosts --vault-pass-file vault-password playbook.yml
