data "hcp_packer_artifact" "php8-1" {
  bucket_name  = "php8-1"
  channel_name = "latest"
  platform     = "aws"
  region       = "eu-west-2"
}

data "hcp_packer_artifact" "php8-2" {
  bucket_name  = "php8-2"
  channel_name = "latest"
  platform     = "aws"
  region       = "eu-west-2"
}

data "hcp_packer_artifact" "docker_host" {
  bucket_name  = "docker-host"
  channel_name = "latest"
  platform     = "aws"
  region       = "eu-west-2"
}

data "hcp_packer_artifact" "nat_instance" {
  bucket_name  = "nat-instance"
  channel_name = "latest"
  platform     = "aws"
  region       = "eu-west-2"
}

output "ami_php81" {
  value       = data.hcp_packer_artifact.php8-1.cloud_image_id
  description = "PHP 8.1 image ID"
}

output "ami_php82" {
  value       = data.hcp_packer_artifact.php8-2.cloud_image_id
  description = "PHP 8.2 image ID"
}

output "ami_docker_host" {
  value       = data.hcp_packer_artifact.docker_host.cloud_image_id
  description = "Docker host image ID"
}

output "ami_nat_instance" {
  value       = data.hcp_packer_artifact.nat_instance.cloud_image_id
  description = "NAT instance image ID"
}
