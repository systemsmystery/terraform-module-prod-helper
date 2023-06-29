data "aws_db_instance" "sm_prod" {
  db_instance_identifier = "sm-prod-mysql"
}

output "db_instance_address" {
  value       = data.aws_db_instance.sm_prod.address
  description = "The address of the RDS instance"
}