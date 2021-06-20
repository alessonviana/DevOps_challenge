provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_key_pair" "key_name" {
  key_name = "challenge_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAnj7eLHvt6J+N2XlwpmeMqw+k/9olK9rYNPF9FFE5LbyxoxgJCsjgYxzx174rkFrQUDi/XIvp0CC82UHtjG7a9WztLqgweFl+LC6pYG4Fi8FxacqB8eFss5fzZOdZCUMEUHg7MSzJAi5ILYM6i55kgOkv+1alvPdlkmcEs4aRzp6BfruDdxGoaYKf5ebhBNcT30hdO4rkSLBsGCFKwO4M5CzB3d0MsnC+mWT6eIX+VLSXbpxD27k8ZLGeZyx7/mNd9M6JG2SAHg1x9ULL6wQ+W1nz28BGqrg842SxoGixwNdR7aoGlfHUxclmtxi3QMuK2u/+LKAZndcU2ZvmMAJUjw== rsa-key-20201202"  
}

resource "aws_instance" "challenge_DevOps_Machine" {
  ami = "ami-042e8287309f5df03"
  instance_type = "t2.micro"
  key_name = "challenge_key"
  tags = {
    Name = "machine01_DevOps"
  }
  vpc_security_group_ids = ["${aws_security_group.allow-acess.id}"]
}
