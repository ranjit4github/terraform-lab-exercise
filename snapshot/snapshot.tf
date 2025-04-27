//Write terraform code to take volume snapshot
provider "aws" {
  region = "ap-south-1" // Replace with your desired region
}

data "aws_instance" "myinstance" {
  instance_id = "i-1234567890abcdef0" # Replace this with your EC2 instance ID
}

resource "aws_ebs_snapshot" "EC2snapshot" {
  volume_id = data.aws_instance.myinstance.root_block_device.0.volume_id
  tags = {
    Name        = "EC2snapshot"
    Description = "Snapshot of EC2 instance volume"
  }
}