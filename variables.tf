variable "aws_region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "db_name" {
  description = "Nome do banco de dados inicial"
  type        = string
  default     = "lanchonete"
}

variable "db_username" {
  description = "Nome do usuário master do banco de dados"
  type        = string
  sensitive   = true  # Opcional, mas recomendado para credenciais
}

variable "db_password" {
  description = "Senha do usuário master do banco de dados"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "Classe da instância RDS (ex: db.t3.micro)"
  type        = string
  default     = "db.t3.micro"
  validation {
    condition     = can(regex("^db\\.[a-z0-9]+\\.\\w+$", var.db_instance_class))
    error_message = "Formato inválido para a classe da instância."
  }
}

variable "db_allocated_storage" {
  description = "Armazenamento inicial alocado (GB)"
  type        = number
  default     = 20
  validation {
    condition     = var.db_allocated_storage >= 20 && var.db_allocated_storage <= 65536
    error_message = "O armazenamento deve ser entre 20GB e 65536GB."
  }
}

variable "db_subnet_ids" {
  description = "IDs das subnets para o DB subnet group"
  type        = list(string)
}

variable "vpc_security_group_ids" {
  description = "IDs dos security groups associados ao RDS"
  type        = list(string)
}