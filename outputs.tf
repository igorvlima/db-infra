output "rds_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private_a.id, aws_subnet.private_b.id]
}

output "rds_sg_id" {
  value = aws_security_group.rds_sg.id
}
