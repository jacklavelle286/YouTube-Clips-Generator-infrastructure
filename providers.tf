// providers.tf
provider "aws" {
  region = var.region
}

terraform {
  backend "remote" {
  }
}

provider "aws" {
  alias = "shared_services"
  access_key = 
}