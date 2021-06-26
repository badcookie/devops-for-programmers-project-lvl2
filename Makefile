test:

install:
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i hosts playbook.yml
