output "aws_instance_public_ip" {
    value = aws_instance.myserver.public_ip
  
}

output "aws_instance_image_id" {
    value = aws_instance.myserver.ami
  
}