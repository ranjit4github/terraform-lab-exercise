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

resource "aws_instance" "my_instance_dev" {
  ami = "ami-0a3277ffce9146b74"
  instance_type = "t2.micro"
  count = var.istest == "dev" ? 1 : 0 
}

resource "aws_instance" "my_instance_prod" {
  ami = "ami-0a3277ffce9146b74"  
  instance_type = "t2.medium"
  count = var.istest == "prod" ? 1 : 0
}
