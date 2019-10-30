resource "aws_route53_record" "kdnakt" {
  name = aws_route53_zone.kdnakt.name
  zone_id = aws_route53_zone.kdnakt.zone_id
  type = "A"

  alias {
    name = aws_lb.lb.dns_name
    zone_id = aws_lb.lb.zone_id
    evaluate_target_health = true
  }
}