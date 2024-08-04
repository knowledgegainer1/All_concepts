resource "aws_route53_record" "www" {
 for_each = aws_instance.web
  zone_id  = data.aws_route53_zone.selected.zone_id
  name    = "${each.key}.ssrg.online"
  type    = "A"
  ttl     = 1
  records = each.key == "web1" ? [each.value.public_ip] : [each.value.private_ip]
  
}