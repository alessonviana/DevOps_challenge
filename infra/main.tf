provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_key_pair" "challenge_key" {
 
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCQag1f+EZQt+KpUu8HMztUaNzBvs01H98bvyWjGlC2dSbaA6Z1BeX7OSYE36DruJk3SxSRZga8TcmDdg83oUf/RFtZe/VniWAD5PFZ5LZZX3jM6VsQrYH8ZcwpY6PpiGX8x83UCZR23pg0PdtoYnI6FVQVliiksY/ZC0zbR6KcfaTgCMeqc17cvbpsOlvmMhTBfO7DEu45myNs4ccW1WKBfOc2RmFFO4a67o/JEZpQI7lut4GvbUFfRCrqDb61jHTlTFEjAk9c8W8TS9zadGlsWdKzwAbhhgXjZgHg+plDAOmWvqF9VLW+kLnJ9xYUp0T33AASRLTsdGpqPf/j+MYR"  
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
