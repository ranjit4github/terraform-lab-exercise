resource "aws_db_instance" "mydbinstance" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = "mbdatabase"
  username             = "mbuser"
  password             = "mbadmin1234"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

output "dbdns" {
  value = aws_db_instance.mydbinstance.endpoint
}
