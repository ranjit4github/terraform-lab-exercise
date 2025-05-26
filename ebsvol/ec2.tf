resource "aws_instance" "myec2" {
  ami                    = "ami-05ba3a39a75be1ec4"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  vpc_security_group_ids = [aws_security_group.demosg.id]
  key_name = aws_key_pair.demokey.key_name
  
  tags = {
    Name = "DemoEC2Instance"
  }
}
