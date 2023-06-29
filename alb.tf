data "aws_lb" "alb" {
  name = "sm-prod"
}

data "aws_lb_listener" "http" {
  load_balancer_arn = data.aws_lb.alb.arn
  port              = 80
}

data "aws_lb_listener" "https" {
  load_balancer_arn = data.aws_lb.alb.arn
  port              = 443
}

data "aws_security_group" "alb_sg" {
  name = "sm-prod-alb"
}

output "alb_arn" {
  value       = data.aws_lb.alb.arn
  description = "The prod LB ARN"
}

output "alb_dns_name" {
  value       = data.aws_lb.alb.dns_name
  description = "The prod LB DNS name"
}

output "alb_zone_name" {
  value       = data.aws_lb.alb.zone_id
  description = "The prod LB zone ID"
}

output "alb_listener_http" {
  value       = data.aws_lb_listener.http.arn
  description = "The prod HTTP listener"
}

output "alb_listener_https" {
  value       = data.aws_lb_listener.https.arn
  description = "The prod HTTPD listener"
}

output "alb_security_group_id" {
  value       = data.aws_security_group.alb_sg.id
  description = "The ALB Security Group"
}