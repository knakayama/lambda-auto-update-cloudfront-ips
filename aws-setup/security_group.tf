resource "aws_security_group" "elb" {
  name        = "${var.name}-elb-sg"
  vpc_id      = "${aws_vpc.vpc.id}"
  description = "${var.name} elb sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name       = "cloudfront"
    AutoUpdate = "true"
  }
}

resource "aws_security_group" "web" {
  name        = "${var.name}-web-sg"
  vpc_id      = "${aws_vpc.vpc.id}"
  description = "${var.name} web sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = ["${aws_security_group.elb.id}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.name}-web-sg"
  }
}
