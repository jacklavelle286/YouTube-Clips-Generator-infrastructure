variable "url" {
    default = "https://token.actions.githubusercontent.com"
    type = string
    description = "particular OIDC connect URL"
}

variable "client_id_list" {
  default = ["sts.amazonaws.com"]
  type = list(string)
  description = "client id list (audience)"
}

variable "thumbprint_list" {
  default = ["6938fd4d98bab03faadb97b34396831e3780aea1", "1c58a3a8518e8759bf075b76b750d4f2df264fcd"]
  type = list(string)
  description = "the github thumbprint list"
}

variable "role_name" {
  description = "Name for the IAM role"
}