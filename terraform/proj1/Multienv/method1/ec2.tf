resource "aws_instance" "web" {
  count         = 3
  ami           = var.ami_id
  instance_type = startswith(var.instance_names[count.index] , "web") ? "t2.nano" : "t2.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}
