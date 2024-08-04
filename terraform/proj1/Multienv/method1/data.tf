data "aws_route53_zone" "selected" {
  name         = "ssrg.online"
  private_zone = false
}

# data "aws_ami" "centos8" {
#   executable_users = ["973714476881"]
#   most_recent      = true

#   filter {
#     name   = "name"
#     values = ["Centos-8-DevOps-Practice"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }
