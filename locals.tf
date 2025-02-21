# locals {
#   # Example: Map environment to account IDs. 
#   # You can override these values via variable if needed, or default to the current account.
#   account_map = {
#     prod    = "864981715246"
#     dev     = "559050248035"
#     staging = "890742571404"
#   }
#   # Use a variable if provided, otherwise fall back to the current account id.
#   target_account = var.account_id != "" ? var.account_id : data.aws_caller_identity.current.account_id
# }
