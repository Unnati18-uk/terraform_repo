terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}
provider "aws" {
  region = "ap-southeast-2"
  
}
resource "aws_instance" "myserver"{
 ami = var.image_id
 instance_type =  var.instance_type
 key_name = var.key_name
 security_groups = var.security_groups


}
variable "image_id"{
  default = "ami-003f5a76758516d1e"
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
  

  

  
