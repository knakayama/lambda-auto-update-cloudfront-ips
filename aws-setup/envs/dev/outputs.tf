output "web_public_ip" {
  value = "${module.dev.web_public_ip}"
}

output "elb_dns_name" {
  value = "${module.dev.elb_dns_name}"
}

output "cf_domain_name" {
  value = "${module.dev.cf_domain_name}"
}
