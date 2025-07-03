module "argocd-applications" {
  source = "../modules/argocd-applications"
  applications = {
    nginx = {
      name = "nginx"
      argocd_namespace = "argocd"
      project = "default"
      repo_url = "https://github.com/AkulovNV/otus-ol-gitops-argo.git"
      target_revision = "main"
      path = "applications/app-kustomize/app"
      destination_server = "https://kubernetes.default.svc"
      destination_namespace = "app"
    }
  }
}