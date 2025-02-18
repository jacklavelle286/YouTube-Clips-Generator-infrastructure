output "ecr_repo_id" {
  value = aws_ecr_repository.this.id
}

output "ecr_url" {
  value = aws_ecr_repository.this.repository_url
}