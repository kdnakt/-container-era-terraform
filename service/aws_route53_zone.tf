variable "zone_name" {}

resource "aws_route53_zone" "kdnakt" {
  name = "${var.zone_name}"
}