data "aws_region" "current" {}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "demobucket"
}

resource "aws_instance" "web" {
  ami = "ami-0ac019f4fcb7cb7e6"
  instance_type = "t2.micro"

  tags = {
    Name = "webserver"
  }
}

resource "aws_route53_zone" "primary" {
  name = "demo.com"
}

resource "aws_route53_record" "name" {
  zone_id = aws_route53_zone.primary.id
  type = "A"
  name = "webserver"
  ttl = 330
  records = [aws_instance.web.public_ip]
}
