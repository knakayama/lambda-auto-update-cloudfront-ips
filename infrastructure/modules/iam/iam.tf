resource "aws_iam_role" "lambda_function" {
  name               = "${var.name}-role"
  assume_role_policy = "${file("${path.module}/policy/lambda_assume_role_policy.json")}"
}

resource "aws_iam_policy_attachment" "cloudwatch_full_access" {
  name       = "CloudWatchFullAccess"
  roles      = ["${aws_iam_role.lambda_function.name}"]
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
}

resource "aws_iam_policy_attachment" "ec2_full_access" {
  name       = "EC2FullAccess"
  roles      = ["${aws_iam_role.lambda_function.name}"]
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
