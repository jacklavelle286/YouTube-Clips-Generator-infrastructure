variable "environment" {
  description = "Deployment environment (prod, dev, staging)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["prod", "dev", "staging"], var.environment)
    error_message = "environment must be one of: prod, dev, staging."
  }
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}