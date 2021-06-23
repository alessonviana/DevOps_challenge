## Dependencies
- AWS account 
- Drone.io account
- Git Hub account


## Used tools

- Terraform v0.14.10 
- aws-cli 2.2.13
- ansible 2.9.6
- Docker 20.10.2
- Python 3
- Go 

## 1 - Running locally

- 1.1 - Configure your AWS credentions
```bash
$ aws configure
AWS Access Key ID [None]: <Access Key ID>
AWS Secret Access Key [None]: <Secret Access Key>
Default region name [None]: <Your region>
```

### 2 - Running pipeline with Drone CI

- 2.1 - Sync your drone.io account with your project on GitHub.

- 2.2 - Create Environment variables:

![ec2-ic](https://docs.drone.io/screenshots/repository_secrets.png)
### You will need to castrate three environment variables.

- Your AWS access key
- Your AWS secret key
- Your private key that you will use to connect to the instance.


### You will need to create your pipeline configuration in a file named .drone.yml. This file should be at the root of your project on GitHub.

- 2.3 - Steps:
```bash
- Install AWS CLI and create a bucket
- Initialize aws plugin for terraform
- Create AWS Infra
- Apply Ansible playbook
- Delete AWS Infra
    (Here it will be executed only when there is a commit in the delete_infra branch)
- Delete S3 bucket
    (Here it will be executed only when there is a commit in the delete_infra branch)
```

### 3 - Test your web aplication: 

- Open your browser and enter your public ip provided in the terraform pipeline. You should get a return from the web application with a hello world.



### 4 - Test your monitoring.
- Open your browser and enter your public ip provided in the terraform pipeline more the aplication port. In this case, we will use netdata that runs on port 19999.





