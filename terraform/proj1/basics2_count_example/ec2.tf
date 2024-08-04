resource "aws_instance" "web" {
  count         = 3
  ami           = data.aws_ami.centos8.id
  instance_type = var.instance_names[count.index] == "web" ? "t2.nano" : "t2.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}
