output "zone_id" {
  value = aws_route53_record.www[*].zone_id
}
