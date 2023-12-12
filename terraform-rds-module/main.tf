resource "aws_rds_cluster" "ecommerce-db" {
  cluster_identifier = "ecommerce-db"
  engine            = "aurora-mysql"
  engine_version    = "5.7.mysql_aurora.2.07.9"
  database_name     = "ecommerce-db"
  master_username   = var.db_username
  master_password   = var.db_password

  
}

resource "aws_rds_cluster_instance" "ecommerce-db" {
  count = 2
  identifier = "ecommerce-db-${count.index}"
  cluster_identifier = aws_rds_cluster.ecommerce-db.id
  instance_class = "db.t2.small"
  engine = "aurora-mysql"
  publicly_accessible = false
}
