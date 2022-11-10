resource "aws_route53_record" "cloud-foundry" {
  zone_id = var.route53_zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_lb.foundry_server.dns_name
    zone_id                = aws_lb.foundry_server.zone_id
    evaluate_target_health = true
  }
}
