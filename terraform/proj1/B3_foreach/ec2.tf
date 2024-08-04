resource "aws_instance" "web" {
  for_each = var.instance_types
  ami           = data.aws_ami.centos8.id
  instance_type = each.value

  tags = {
    Name = each.key
  }
}
