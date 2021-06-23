provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

#resource "aws_key_pair" "challange_DevOps" {
# 
#  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvpJkcQjpiXpz7BQCFK64dhQp6wh7OM8wCFkQR3p4G1EaJghbtdUtfEfN1FcU/DDQihWRxzGhx8YbowG6xYXv0vb0ODD1lbKx6q5eQkTyfFGCL56cPjZpd5gCG2aEu4+57E4cQQbPEwOAqhdU/EqmJf3BUdiX/06UbGvC2jMrJUfjZUbs1mKtSqryG9n/gi/21gMg2MYGvS0uUOmiEcVMyAh+fSfqYaWCACGdiaNSeQWCn9QSwYLACO6fmBJAKDyNa3s0zMBq8mO2B8fKJvoscyTe1u/fN0ddM/jkWkqByXLhNESQ04ZNDkKkFAHOv/87khhLZ1D0lXKZWFl9B0kjV teste_infra"  
#}

resource "aws_instance" "challenge_DevOps_Machine" {
  ami = "ami-042e8287309f5df03"
  instance_type = "t2.micro"
  key_name = "challange_DevOps"
  tags = {
    Name = "machine01_DevOps"
  }
  vpc_security_group_ids = ["${aws_security_group.allow-acess.id}"]
}

resource "null_resource" "run" {
  provisioner "local-exec" {
    command = "echo EC2 Ok"
  }
  depends_on = [aws_instance.challenge_DevOps_Machine]
}