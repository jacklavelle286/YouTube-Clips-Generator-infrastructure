variable "environment" {
  description = "Deployment environment (prod, dev, staging, shared)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["prod", "dev", "staging", "shared-services"], var.environment)
    error_message = "environment must be one of: prod, dev, staging, or shared services"
  }
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}


data "aws_caller_identity" "current" {}


variable "assume_role" {
  type        = string
  description = "the assume role arn"
}

variable "account_id" {
  type        = string
  description = "the account id which the resources are being launched in"
}