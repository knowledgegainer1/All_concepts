resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_name == "Web" ? "t2.small" : "t2.nano"
  vpc_security_group_ids = [ aws_security_group.example.id]

  tags = var.ec2_tags
}

