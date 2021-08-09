ANSIBLE = ansible-playbook
HOSTS = hosts.yml

main:
	$(ANSIBLE) -i $(HOSTS) main.yml

upgrade:
	$(ANSIBLE) -i $(HOSTS) upgrade.yml
