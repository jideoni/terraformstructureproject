provider "aws" {
  profile = "terraform-admin" #role or user or user group
  region  = var.region
}

module "vpc" {
  source = "../../../modules/vpc"
}
