resource "aws_db_subnet_group" "default" {
  name       = "lanchonete-db-subnet-group"
  subnet_ids = [aws_subnet.private_a.id, aws_subnet.private_b.id]

  tags = {
    Name = "Lanchonete DB subnet group"
  }
}

resource "aws_db_instance" "postgres" {
  identifier             = "lanchonete-db"
  allocated_storage      = var.db_allocated_storage
  engine                 = "postgres"
  engine_version         = "15.3"
  instance_class         = var.db_instance_class
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.default.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  skip_final_snapshot    = true
  publicly_accessible    = false
  multi_az               = false

  tags = {
    Name = "Lanchonete PostgreSQL"
  }
}