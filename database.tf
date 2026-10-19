# Misconfigured on purpose for the pull request demo. Never apply.
resource "aws_db_instance" "orders" {
  identifier          = "example-orders-db"
  engine              = "postgres"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  username            = "admin"
  password            = "example-only-password"
  publicly_accessible = true
  storage_encrypted   = false
  skip_final_snapshot = true
}

resource "aws_security_group" "ssh_open" {
  name = "ssh-from-anywhere"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
