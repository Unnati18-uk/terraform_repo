provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_security_group" "my_sg" {
  name        = "terra_security_group"
  description = "allow different protocols"
  vpc_id      = var.vpc_id

  ingress {
    description = "allow SSH protocol"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow HTTP protocol"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform_security_group"
  }
}

variable "vpc_id" {
  default = "vpc-01f0d94d27d4b7da5"
}
