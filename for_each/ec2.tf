
resource "aws_instance" "test" {
 for_each = var.my_instances

 ami           = each.value["ami"]
 instance_type = each.value["type"]
}
