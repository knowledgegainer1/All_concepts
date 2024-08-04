output "zone_id" {
  value = aws_route53_record.www[*].zone_id
}
output "aws_ami_details" {
  value = data.aws_ami.centos8
}
output "vpc_detail" {
  value = data.aws_ami.aws-linux-2
}
output "wef" {
  value = data.aws_vpc.default
}