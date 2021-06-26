test:

install:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i hosts --vault-pass-file vault-password playbook.yml

monitoring:
	ansible-playbook -i hosts --vault-pass-file vault-password setup_monitoring.yml
