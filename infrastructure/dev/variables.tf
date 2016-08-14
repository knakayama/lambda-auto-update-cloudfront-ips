variable "aws_region" {
  default = "us-east-1"
}

variable "apex_function_update_security_groups_lambda" {}

variable "name" {
  default = "lambda-auto-update-cloudfront-ips"
}

variable "topic_arn" {
  default = "arn:aws:sns:us-east-1:806199016981:AmazonIpSpaceChanged"
}
