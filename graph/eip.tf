resource "aws_eip" "ip" {
  instance = aws_instance.myec2.id
  vpc = true
}
