locals {
  common_tags = {
    Environment = var.environment
    Owner       = var.team
    Project     = var.project
  }
}