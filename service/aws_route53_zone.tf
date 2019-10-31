variable "zone_name" {}

data "aws_route53_zone" "kdnakt" {
  name = "${var.zone_name}"
}