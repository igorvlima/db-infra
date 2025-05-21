variable "db_username" {
  description = "Nome de usuário master do banco de dados"
  type        = string
  sensitive   = true  # Oculta o valor em logs
}

variable "db_password" {
  description = "Senha do usuário master do banco de dados"
  type        = string
  sensitive   = true  # Oculta o valor em logs
}