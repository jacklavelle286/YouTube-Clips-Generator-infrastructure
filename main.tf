module "frontend_repo" {
  source       = "./modules/ecr/repository"
  name         = "frontend_ecr_repo"
  force_delete = true
} 