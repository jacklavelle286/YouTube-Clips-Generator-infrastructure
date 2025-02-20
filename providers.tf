// providers.tf
provider "aws" {
  region = var.region

  assume_role {
    role_arn = "arn:aws:iam::${local.target_account}:role/OIDCRole"
  }
}

terraform {
  
}