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

resource "aws_instance" "my_terraform_instance" {
  ami = "ami-0a3277ffce9146b74"
  instance_type = var.listtype[2]

  tags = {
    name = "terraform_instance"
  }
}
