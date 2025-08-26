# Configure the AWS Provider
provider "aws" {
  profile = "terraform-admin" #role or user or user group
  region  = "us-east-2"
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

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  enable_dns_support   = false
  enable_dns_hostnames = false

  tags = {
    Name = "dev-main"
  }
}
