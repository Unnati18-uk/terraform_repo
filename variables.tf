variable "region" {
    default = "ap-southeast-2"
    type = string
    description = "variable of region"   #optional
  }

variable "image_id" {
    default = "ami-003f5a76758516d1e"
    description = "variable of ami"
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