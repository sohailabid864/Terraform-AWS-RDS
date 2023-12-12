resource "aws_db_instance" "ecommerce_db" {
  identifier           = var.db_instance_identifier
  engine               = "mysql"
  instance_class       = var.db_instance_class
  multi_az             = true
  allocated_storage    = var.allocated_storage
  storage_type         = "gp2"
  username             = var.db_username
  password             = var.db_password
  publicly_accessible  = false
}
