provider "aws" {
  region = "ap-southeast-2"
}
resource "aws_instance" "server0" {
  ami = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
  key_name = "sydneykay"
}
resource "aws_instance" "server1" {
  ami = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
  key_name = "sydneykay"
}

resource "aws_instance" "server2" {
  ami = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
  key_name = "sydneykay"
}
resource "aws_instance" "server3" {
  ami = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
  key_name = "sydneykay"
}
resource "aws_instance" "server4" {
  ami = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
  key_name = "sydneykay"
}
resource "aws_instance" "server5" {
  ami = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
  key_name = "sydneykay"
}
resource "aws_instance" "server6" {
  ami = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
  key_name = "sydneykay"
}
