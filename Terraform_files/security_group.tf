resource "aws_security_group" "fargate" {
  name = "${var.project_name}-fargate"
}

resource "aws_security_group_rule" "allow_fargate_outbound" {
  for_each = toset(var.ports)

  security_group_id = aws_security_group.fargate.id

  type        = "ingress"
  from_port   = each.value
  to_port     = each.value
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "fargate_egress" {
  security_group_id = aws_security_group.fargate.id

  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
