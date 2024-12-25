provider "aws" {
  region = "ap-southeast-2"  
}

resource "aws_iam_user" "my_iam_user" {
  name = "terra-user"  
}

resource "aws_iam_user_policy_attachment" "my_user_admin_policy" {
  user       = aws_iam_user.my_iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

output "iam_user_arn" {
  value = aws_iam_user.my_iam_user.arn
}
