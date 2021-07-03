inventory=provisioning/hosts


install:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i $(inventory) --vault-pass-file vault-password playbook.yml

encrypt:
	ansible-vault encrypt_string --vault-password-file vault-password --stdin-name $(name)
