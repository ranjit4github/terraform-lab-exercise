resource "aws_instance" "demoinstance" {
  ami           = "ami-091dccf4e2d272bae" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "tfdemokey"
  security_groups = [aws_security_group.sg.name]
  tags = {
    Name = "demoinstance"
  }
  root_block_device {
    volume_size = 100
    volume_type = "gp2"
    delete_on_termination = true
  }
}