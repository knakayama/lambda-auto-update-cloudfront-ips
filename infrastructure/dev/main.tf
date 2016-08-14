module "iam" {
  source = "../modules/iam"

  name = "${var.name}"
}

module "sns" {
  source = "../modules/sns"

  topic_arn  = "${var.topic_arn}"
  lambda_arn = "${var.apex_function_update_security_groups_lambda}"
}
