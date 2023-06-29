data "aws_iam_policy" "teleport_rds" {
  name = "teleport_rds_policy"
}

output "iam_teleport_rds_policy_arn" {
  value       = data.aws_iam_policy.teleport_rds.arn
  description = "ARN of the Teleport RDS policy"
}