resource "aws_instance" "demoinstance" {
  ami           = "ami-091dccf4e2d272bae" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "demokey"
  security_groups = [aws_security_group.sg.name]
  tags = {
    Name = "demoinstance"
  }
}
