# variable applications {
#   nginx = {
#     name                  = "nginx"
#     argocd_namespace      = "argocd"
#     project               = "cluster02"
#     repo_url              = "https://github.com/your-org/your-repo.git"
#     target_revision       = "HEAD"
#     path                  = "otus-ol-gitops-argo/applications/app/resources"
#     destination_server    = "https://kubernetes.default.svc"
#     destination_namespace = "app"
#   }
# }

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


projects = {
  cluster02 = {
    name              = "cluster02"
    server            = "https://192.168.5.4:60668"
    cluster_connected = "cluster02"
    description       = "Cluster02"
    repositories_git  = [
      "https://github.com/AkulovNV/otus-ol-gitops-argo.git",
    ]
  }
}