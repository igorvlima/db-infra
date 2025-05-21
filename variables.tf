variable "aws_region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "db_username" {
  description = "Nome de usuário master do banco de dados"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Senha do usuário master do banco de dados"
  type        = string
  sensitive   = true
}