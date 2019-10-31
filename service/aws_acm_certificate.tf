resource "aws_acm_certificate" "kdnakt" {
  domain_name = data.aws_route53_zone.kdnakt.name
  subject_alternative_names = []
  validation_method = "DNS"
}
