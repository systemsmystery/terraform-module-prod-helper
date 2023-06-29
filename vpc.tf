data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["sm-prod"]
  }
}

output "vpc_id" {
  value       = data.aws_vpc.main.id
  description = "The ID of the VPC."
}

output "vpc_cidr_block" {
  value       = data.aws_vpc.main.cidr_block
  description = "The CIDR block of the VPC."
}