terraform {
  backend "s3" {
    bucket         = "backendtfstate-youtubeclips-infra"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-lock-table"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"

    }

  }
}

provider "aws" {
  alias = "dev"
  region = var.region
}

provider "aws" {
  alias = "staging"
  region = var.region
}

provider "aws" {
  alias = "production"
  region = var.region
}

provider "aws" {
  alias = "staging"
}