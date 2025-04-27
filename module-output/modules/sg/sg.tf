
resource "aws_security_group" "ec2-sg" {
  name = "myec2-sg"

  ingress {
      description = "Allow inbound"
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
      description = "Allow outbound"
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = [ "0.0.0.0/0" ]
  }  
}

output "sg_id" {
  value = aws_security_group.ec2-sg.id
}