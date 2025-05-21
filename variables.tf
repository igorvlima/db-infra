variable "aws_region" {
  default = "us-east-1"
}

variable "db_name" {
  default = "lanchonete"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  description = "Senha do banco"
  sensitive   = true
}

variable "db_instance_class" {
  default = "db.t3.micro"
}

variable "db_allocated_storage" {
  default = 20
}

variable "db_subnet_ids" {
  type = list(string)
}

variable "vpc_security_group_ids" {
  type = list(string)
}
