variable "amis" {
  type = "map"

  default = {
      "us-east-1" = "ami-026c8acd92718196b"
     
  }
}

variable "cdirs_acesso_remoto" {
  type = "list"
  default = ["0.0.0.0/0"]
}

variable "key_name" {
  default = "terraform"
}

