resource "aws_security_group" "mysg" {
  name = "mysg"
  ingress {
    description = "Ip whtelist"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["${aws_eip.ip.private_ip}/32"]
  }
}
