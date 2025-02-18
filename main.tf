module "oidc_for_github_actions_and_role" {
  source    = "./modules/iam/identity_providers"
  role_name = "github-actions-role"
  providers = {
    aws = var.environment == "prod" ? aws.prod : aws.staging
  }
}

module "frontend_repo" {
  source = "./modules/ecr/repository"
  name   = "frontend_ecr_repo"
  providers = {
    aws = var.environment == "prod" ? aws.prod : aws.staging
  }
} 