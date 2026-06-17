resource "aws_db_instance" "rds_db" {
	allocated_storage = 20
	engine = "mysql"
	engine_version = "8.0"
	instance_class = "db.t3.micro"
	identifier = "terraform-db"

	username = var.db_username
  	password = var.db_password
	publicly_accessible  = true

  skip_final_snapshot  = true

  vpc_security_group_ids = [
    aws_security_group.rds_sg.id
  ]

  tags = {
    Name = "Terraform-RDS"
  }
}
