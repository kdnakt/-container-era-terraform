resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.lb.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.http.arn
    type = "forward"
  }
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.lb.arn
  port = "443"
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-TLS-1-2-2017-01"
  certificate_arn = aws_acm_certificate.kdnakt.arn

  default_action {
    target_group_arn = aws_lb_target_group.http.arn
    type = "forward"
  }
}
