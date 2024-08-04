variable "instance_types" {
  type = map(string)
  default = {
    "web1" = "t2.micro"
    "mongodb1"="t2.nano"
    "catalogue"="t2.nano"
  }
}