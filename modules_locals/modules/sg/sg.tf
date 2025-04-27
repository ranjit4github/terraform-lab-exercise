resource "aws_security_group" "ec2-sg" {
    name = "myec2-sg"
    ingress {
        description = "Whitlisting IP address - EC2"
        from_port = local.app_port
        to_port = local.app_port
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "Whitlisting IP address"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "elb-sg" {
    name = "elb-sg"
    ingress {
        description = "Whitlisting IP address - ELB"
        from_port = local.app_port
        to_port = local.app_port
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "Whitlisting IP address"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

locals {
  app_port = 80
}