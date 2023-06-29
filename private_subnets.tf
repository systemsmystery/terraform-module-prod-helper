data "aws_subnets" "private" {
  tags = {
    Zone = "private"
  }
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
}

output "private_subnets" {
  value = data.aws_subnets.private
}

data "aws_subnet" "private" {
  for_each = toset(data.aws_subnets.private.ids)
  id       = each.value
}

output "private_subnet_cidr" {
  description = "Private Subnet CIDR Blocks"
  value = [
    for subnet in data.aws_subnets.private.ids : data.aws_subnet.private[subnet].cidr_block
  ]
}