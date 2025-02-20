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


variable "team" {
  type = string
}

variable "project" {
  type = string
}