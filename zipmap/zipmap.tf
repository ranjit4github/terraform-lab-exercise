resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}

output "user_name" {
  value = aws_iam_user.lb[*].name
}

output "combine" {
  value = zipmap(aws_iam_user.lb[*].name,aws_iam_user.lb[*].arn)
}
