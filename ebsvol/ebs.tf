# Creating EBS volume
resource "aws_ebs_volume" "storage" {
  availability_zone = "ap-south-1a"
  size              = 30
  tags = {
    Name = "demoEBS"
  }
}

# Attaching EBS volume to EC2
resource "aws_volume_attachment" "ebs_vol" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.storage.id
  instance_id = aws_instance.myec2.id
}
