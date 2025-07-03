module "argocd-applications" {
  source = "../modules/argocd-applications"
  applications = var.applications
}