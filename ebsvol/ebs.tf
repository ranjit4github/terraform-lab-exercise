
resource aws_ebs_volume ebs_volume {
  availability_zone = "ap-south-1a"
  size              = 30 # Size in GB
  type              = "gp2" # General Purpose SSD
  tags = {
    Name = "MyEBSVolume"
  }
}

resource aws_volume_attachment demo_volume_attach {
  device_name = "/dev/sdh" # Device name in the instance
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.myec2.id
}