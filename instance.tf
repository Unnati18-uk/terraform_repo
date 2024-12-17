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