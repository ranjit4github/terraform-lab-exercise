resource "aws_instance" "myec2" {
  ami = "ami-026f33d38b6410e30"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0c31b74f68e2b2f0a", "sg-035c22bf63ef83a66"]
  key_name = "MyNewKey"
  subnet_id = "subnet-58688b33"
  tags = {
    Name = "Ansible-JenkinsB4"
  }
}
