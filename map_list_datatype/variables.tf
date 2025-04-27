variable "maptype" {
  type = map
  default = {
    ap-south-1 = "t2.micro"
    us-east-1 = "t2.nano"
    us-west-2 = "t2.small"
  }
}

variable "listtype" {
  type = list
  default = ["t2.large", "t2.medium", "m5.large"]
}
