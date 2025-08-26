# Configure the AWS Provider
provider "aws" {
  profile = "terraform-admin" #role or user or user group
  region  = var.region
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
