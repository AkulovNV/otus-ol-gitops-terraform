module "argocd-projects" {
  source = "../modules/argocd-projects"
  projects = var.projects
}