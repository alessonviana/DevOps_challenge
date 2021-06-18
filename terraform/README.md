## In this lab I will create an infrastructure from scratch with terraform in the AWS cloud.

## Used tools
- Terraform v0.14.10 
- aws-cli 2.1.36

## Running locally

### 1 - Configure your AWS credentions
```bash
$ aws configure
AWS Access Key ID [None]: <Access Key ID>
AWS Secret Access Key [None]: <Secret Access Key>
Default region name [None]: <Your region> (I usually use us-east-1)
$ aws s3api create-bucket --bucket <Your bucket name> --region <Your region>
```

### 2 - Installing terraform dependencies
```bash
$ terraform init
```

### 4 - Checking design and applying changes
```bash
$ terraform plan
```

### 5 - Create infrastructure
```bash
$ terraform apply
```

### 6 - Destroying the infrastructure
- CAUTION! 
- Here you will destroy all created infrastructure.
- If you are doing it in the laboratory, this step is important so that you do not run the risk of being unduly charged by your cloud provider.
```bash
$ terraform destroy
```
### 7 - Contribuition
- If you would like to improve and contribute to this project, please send me an email: alesson.viana@gmail.com


