resource "aws_security_group" "allow-acess" {
  name        = "allow-acess"
  description = "allow-acess"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = "${var.cdirs_acesso_remoto}"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = "${var.cdirs_acesso_remoto}"
  }
  tags = {
    Name = "allow_access"
  }
}


