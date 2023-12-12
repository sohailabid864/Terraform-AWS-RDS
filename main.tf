module "rds" {
  source = "./terraform-rds-module"

  aws_region            = var.aws_region
  db_instance_identifier = var.db_instance_identifier
  db_username           = var.db_username
  db_password           = var.db_password
  db_instance_class     = var.db_instance_class
  allocated_storage     = var.allocated_storage
}
