# Module - Prod Helper

This module provides helper resources for the production environment in the form of outputs.

## Terraform Resources

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.4.0 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | 0.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.4.0 |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.sm_prod](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/db_instance) | data source |
| [aws_iam_policy.teleport_rds](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/iam_policy) | data source |
| [aws_lb.alb](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/lb) | data source |
| [aws_lb_listener.http](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/lb_listener) | data source |
| [aws_lb_listener.https](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/lb_listener) | data source |
| [aws_security_group.alb_sg](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/security_group) | data source |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/subnet) | data source |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/subnet) | data source |
| [aws_subnets.private](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/subnets) | data source |
| [aws_subnets.public](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/subnets) | data source |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/data-sources/vpc) | data source |
| [hcp_packer_image.php8-1](https://registry.terraform.io/providers/hashicorp/hcp/0.61.0/docs/data-sources/packer_image) | data source |
| [hcp_packer_image.php8-2](https://registry.terraform.io/providers/hashicorp/hcp/0.61.0/docs/data-sources/packer_image) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_arn"></a> [alb\_arn](#output\_alb\_arn) | The prod LB ARN |
| <a name="output_alb_dns_name"></a> [alb\_dns\_name](#output\_alb\_dns\_name) | The prod LB DNS name |
| <a name="output_alb_listener_http"></a> [alb\_listener\_http](#output\_alb\_listener\_http) | The prod HTTP listener |
| <a name="output_alb_listener_https"></a> [alb\_listener\_https](#output\_alb\_listener\_https) | The prod HTTPD listener |
| <a name="output_alb_security_group_id"></a> [alb\_security\_group\_id](#output\_alb\_security\_group\_id) | The ALB Security Group |
| <a name="output_alb_zone_name"></a> [alb\_zone\_name](#output\_alb\_zone\_name) | The prod LB zone ID |
| <a name="output_ami_php81"></a> [ami\_php81](#output\_ami\_php81) | PHP 8.1 image ID |
| <a name="output_ami_php82"></a> [ami\_php82](#output\_ami\_php82) | PHP 8.2 image ID |
| <a name="output_db_instance_address"></a> [db\_instance\_address](#output\_db\_instance\_address) | The address of the RDS instance |
| <a name="output_iam_teleport_rds_policy_arn"></a> [iam\_teleport\_rds\_policy\_arn](#output\_iam\_teleport\_rds\_policy\_arn) | ARN of the Teleport RDS policy |
| <a name="output_private_subnet_cidr"></a> [private\_subnet\_cidr](#output\_private\_subnet\_cidr) | Private Subnet CIDR Blocks |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | n/a |
| <a name="output_public_subnet_cidr"></a> [public\_subnet\_cidr](#output\_public\_subnet\_cidr) | Public Subnet CIDR Blocks |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | Public Subnets, used for IDs |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC. |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC. |
<!-- END_TF_DOCS -->
