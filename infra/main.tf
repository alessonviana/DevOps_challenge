provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_key_pair" "challenge_key" {
 
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCkT8O3l2hC3ibozCpEeZmBOzZmZyxTBWUfSSmDaNoKV92BirOd7TmK4jePni0UAadAlh18NYBSxQsl85vt8VMdK7z8B0xqApt5PeVTwOUiLPV5+U1ApwWbbc0KbiASqkXAyXDKWldhcZGbZWnqkFwR9NOP7+Nf+OwuuxNTQ3Vg/l/PXSXNpSUBHXes6e3XERGoT1d0fvofJajiyqiM0kEXx57V8CVTOKvXzu1/A9Ute+8uT2k/KXfP+sKj5dnyg73Itf8zxRd1zbdwk+ydKUwZQpLTRYEp4MYEZsliZgvuUhnWqL8QoHPeObXqQPcsfxWMPB/GjvzVR8a3cs6ppP3p imported-openssh-key"  
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
