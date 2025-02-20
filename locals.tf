locals {
  common_tags = {
    Environment = var.environment
  }
}

locals {
  account_map = {
    prod    = "559050248035"
    dev     = "123456789012"
    staging = "987654321098"
  }
  // Look up the target account from the environment variable.
  target_account = lookup(local.account_map, var.environment, "123456789012")
}