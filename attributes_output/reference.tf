terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_eip" "myeip" {
  vpc = true
}

//Allocation of elastic ip to the ec2 instance
resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.my_terraform_instance.id
  allocation_id = aws_eip.myeip.id
}

//Security group creation and whitelisting the eip
resource "aws_security_group" "allow_tls" {
  name        = "terraform-sg"

  ingress {
    description      = "Whitelist EIP"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.myeip.public_ip}/32"]
  }

  tags = {
    Name = "terraform-sg"
  }
}

resource "aws_instance" "my_terraform_instance" {
  ami = "ami-0a3277ffce9146b74"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    name = "terraform_instance"
  }
}
