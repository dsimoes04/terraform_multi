resource "aws_security_group" "allow_ports" {
  #provider =    aws.aws
  name        = "allow_ports"
  description = "Allow ports inbound traffic"
  vpc_id      = "vpc-03e91fbbe5c0814f4"

  ingress {
    description = " Ports from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
  }

  ingress {
    description = " SSH Ports from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  ingress {
    description = " HTTP Ports from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ports"
  }
}