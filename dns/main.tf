resource "aws_route53_record" "test" {
  zone_id = "azoneid"
  name    = "test.whatever.blah"
  type    = "A"
  ttl     = 300
  records = ["10.0.0.1"]

  lifecycle {
   prevent_destroy = true
   ignore_changes = [records]
  }
}