create_config:
	aws s3api create-bucket --bucket terraform-state-challenge-backend

delete_config:
	aws s3 rb s3://terraform-state-demoapi --force

infra_up:
	terraform init infra/
	echo "yes" |  terraform apply infra/

infra_down:
	echo "yes" | terraform destroy infra/
