variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "environment" {
  type = string
  description = "Choosing your environment"
  default = "dev"
}