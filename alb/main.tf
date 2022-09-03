resource "aws_route53_record" "test" {
  zone_id = "azoneid"
  name    = "test.whatever.blah"
  type    = "A"
  ttl     = 300
  records = ["10.0.0.2"]

  allow_overwrite = true
}