data "aws_subnets" "public" {
  tags = {
    Zone = "public"
  }
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
}

data "aws_subnet" "public" {
  for_each = toset(data.aws_subnets.public.ids)
  id       = each.value
}

output "public_subnets" {
  value       = data.aws_subnets.public
  description = "Public Subnets, used for IDs"
}

output "public_subnet_cidr" {
  description = "Public Subnet CIDR Blocks"
  value = [
    for subnet in data.aws_subnets.public.ids : data.aws_subnet.public[subnet].cidr_block
  ]
}