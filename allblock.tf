terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}

provider "aws" {
  region = var.region
}
resource "aws_instance" "myserver" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = var.security_groups

    tags = {
      Name = "terra-server"
    }
  
}

variable "image_id" {
  default =  "ami-003f5a76758516d1e"
  
}
variable "region" {
  default = "ap-southeast-2"
  
}
variable "instance_type" {
  default = "t2.micro"
  
}
variable "key_name" {
  default = "sydneykay"
  
}
variable "security_groups" {
  default = ["default"]
  
}

output "aws_instance_public_ip" {
  value = aws_instance.myserver.public_ip
  
}

output "aws_instance_image_id" {
  value = aws_instance.myserver.ami
  
}

output "aws_instance_private_ip" {
  value = aws_instance.myserver.private_ip
  
}