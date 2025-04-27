variable "sg_ports" {
  type = list(number)
  description = "list of ingress ports"
  default = [8100, 8200, 9200, 8381, 9500]
}
