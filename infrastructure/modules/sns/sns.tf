resource "aws_lambda_permission" "lambda" {
  statement_id  = "AllowExecutionFromSNS"
  action        = "lambda:InvokeFunction"
  function_name = "${var.lambda_arn}"
  principal     = "sns.amazonaws.com"
  source_arn    = "${var.topic_arn}"
}
