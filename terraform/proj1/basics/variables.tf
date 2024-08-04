variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "instance_name" {
    type = string
    default = "Web"
  
}
variable "ec2_tags" {
  type = map 
  default = {
    Name = "HelloWorld"
  }
}
variable "sg_cidr" {
  type = list 
  default = ["0.0.0.0/0"]
}