resource "aws_instance" "myec2" {
  ami = "ami-0a3277ffce9146b74"
  instance_type = var.instance_type
}