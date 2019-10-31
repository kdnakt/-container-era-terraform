resource "aws_route53_record" "kdnakt" {
  name = data.aws_route53_zone.kdnakt.name
  zone_id = data.aws_route53_zone.kdnakt.zone_id
  type = "A"

  alias {
    name = aws_lb.lb.dns_name
    zone_id = aws_lb.lb.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "kdnakt_certificate" {
  name = aws_acm_certificate.kdnakt.domain_validation_options[0].resource_record_name
  type = aws_acm_certificate.kdnakt.domain_validation_options[0].resource_record_type
  zone_id = data.aws_route53_zone.kdnakt.zone_id
  records = [
    aws_acm_certificate.kdnakt.domain_validation_options[0].resource_record_value
  ]
  ttl = 60
}