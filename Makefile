create_config:
	aws s3api create-bucket --bucket terraform-state-challenge-sre

delete_config:
	aws s3 rb s3://terraform-state-demoapi --force

infra_up:
	terraform init infra/
	echo "yes" |  terraform apply infra/

infra_down:
	echo "yes" | terraform destroy infra/

build_docker:
	docker build -t $(IMAGE_NAME) .
	docker push $(IMAGE_NAME)


deploy:
	cp ./ansible/deployer.pem ~/.ssh/deployer.pem
	chmod 0600 ~/.ssh/deployer.pem
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook ./ansible/deploy.yaml -i ./ansible/inventory -u ubuntu --key-file "~/.ssh/deployer.pem" --extra-vars "docker_image=$(IMAGE_NAME)"