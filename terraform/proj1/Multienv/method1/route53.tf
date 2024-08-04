resource "aws_route53_record" "www" {
 count =3
  zone_id  = data.aws_route53_zone.selected.zone_id
  name    = "${var.instance_names[count.index]}.ssrg.online"
  type    = "A"
  ttl     = 1
  records = var.instance_names[count.index] == "web1" ? [aws_instance.web[count.index].public_ip] : [aws_instance.web[count.index].private_ip]
  
}