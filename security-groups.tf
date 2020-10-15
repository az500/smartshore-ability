
resource "aws_security_group" "worker_group" {
  name_prefix = "worker_group"
  vpc_id      = module.vpc.vpc_id
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [
      "172.30.0.0/16",
    ]
  }
}

