resource "aws_instance" "myec2" {
  ami                    = "ami-05ba3a39a75be1ec4"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.demosg.id]
  key_name = "tfdemokey"
  
  tags = {
    Name = "DemoEC2Instance"
  }
  root_block_device {
    volume_size = 30
    volume_type = "gp2"
  }
}
