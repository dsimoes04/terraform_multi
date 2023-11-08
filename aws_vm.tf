resource "aws_instance" "web" {
  #provider =    aws.aws
  ami             = "ami-01bc990364452ab3e"
  instance_type   = "t2.micro"
  security_groups = [resource.aws_security_group.allow_ports.name]

  tags = {
    Name = "test-terraform"
  }
}