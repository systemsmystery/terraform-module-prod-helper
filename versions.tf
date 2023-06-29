terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.61.0"
    }
  }
  required_version = "1.4.5"
}