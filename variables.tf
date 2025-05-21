resource "aws_db_instance" "postgres" {
  # ... (outros parâmetros)
  username = var.db_username
  password = var.db_password
}