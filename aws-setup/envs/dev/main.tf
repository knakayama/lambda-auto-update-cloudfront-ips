provider "aws" {
  region = "${var.region}"
}

module "dev" {
  source = "../../"

  name            = "${var.name}"
  vpc_cidr        = "${var.vpc_cidr}"
  instance_types  = "${var.instance_types}"
  cf_config       = "${var.cf_config}"
  azs             = "${data.aws_availability_zones.az.names}"
  amazon_linux_id = "${data.aws_ami.amazon_linux.id}"
}
