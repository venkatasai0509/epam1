provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "project-instance" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  key_name = "private-p-key"
  security_groups = [aws_security_group.security-groups-project1.name]
  tags = {
    Name = "project-instance"
  }
}
#security groups
resource "aws_security_group" "security-groups-project1" {
  name        = "security groups on terraform"
  description = "security groups on terraform"
  vpc_id      = "vpc-0b13e8109b6d39c6e"

  ingress {
    description      = "https"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description      = "custom Tpc"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "security-groups-project1"
  }
}