resource "aws_security_group" "demo" {
  name        = "${var.environment_name}-demo-sg"
  description = "SSH and Internal Traffic"
  vpc_id      = module.demo_vpc.vpc_id

  tags = {
    Name = var.environment_name
  }

  # Internal Traffic
  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    self      = true
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

