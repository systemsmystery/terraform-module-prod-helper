terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.61.0"
    }
  }
  required_version = "1.10.3"
}