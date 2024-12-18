output "aws_vpc_id" {
    value = aws_vpc.my_vpc.id
  
}
output "aws_internet_gateway_id" {
    value = aws_internet_gateway.my_igw.id
  
}

output "aws_vpc_arn" {
    value = aws_vpc.my_vpc.arn
  
}