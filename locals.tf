locals {
  common_tags = {
    Environment = var.environment
  }
}

locals {
  account_map = {
    prod    = "864981715246"
    dev     = "559050248035"
    staging = "890742571404"
  }
  // Look up the target account from the environment variable.
  target_account = lookup(local.account_map, var.environment, "559050248035")
}