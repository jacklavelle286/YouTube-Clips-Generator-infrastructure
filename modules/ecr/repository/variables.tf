variable "name" {
  type = string
  description = "name of the ECR repo."
}


variable "force_delete" {
  type = bool
  default = false
} 

variable "tags" {
  description = "Common tags for resources"
  type        = map(string)
}