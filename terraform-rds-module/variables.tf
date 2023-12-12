variable "aws_region" {
  description = "AWS region for resources"
}

variable "db_instance_identifier" {
  description = "Identifier for the RDS instance"
}

variable "db_username" {
  description = "Username for the RDS instance"
}

variable "db_password" {
  description = "Password for the RDS instance"
}

variable "db_instance_class" {
  description = "RDS instance class"
}

variable "allocated_storage" {
  description = "Allocated storage for RDS instance"
}

