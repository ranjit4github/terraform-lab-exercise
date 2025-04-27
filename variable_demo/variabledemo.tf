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

//Security group creation and whitelisting the eip
resource "aws_security_group" "var_demo" {
  name        = "terraform-sg"

  tags = {
    name = "var_demo"
  }
  ingress {
    description      = "Whitelist Public IP"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.pub_ip]
  }
  ingress {
    description      = "Whitelist Public IP"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.pub_ip]
  }
  ingress {
    description      = "Whitelist Public IP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.pub_ip]
  }
}
