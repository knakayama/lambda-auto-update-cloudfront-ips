output "web_public_ip" {
  value = "${aws_instance.web.public_ip}"
}

output "elb_dns_name" {
  value = "${aws_elb.elb.dns_name}"
}

output "cf_domain_name" {
  value = "${aws_cloudfront_distribution.cf.domain_name}"
}
