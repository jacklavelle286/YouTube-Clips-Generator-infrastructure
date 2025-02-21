locals {
  # Map each environment to its AWS account ID.
  account_map = {
    prod    = "864981715246"
    dev     = "559050248035"
    staging = "890742571404"
  }

  # Look up the account ID based on the chosen environment.
  computed_account_id = lookup(local.account_map, var.environment, "559050248035")

  # Build the assume_role ARN dynamically.
  computed_assume_role = "arn:aws:iam::${local.computed_account_id}:role/OIDCRole"

  # Common tags (if needed)
  common_tags = {
    Environment = var.environment
  }
}
