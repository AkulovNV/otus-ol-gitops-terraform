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
  app_in_app_cluster01 = {
    name = "app-in-app"
    argocd_namespace = "argocd"
    project = "default"
    repo_url = "https://github.com/AkulovNV/otus-ol-gitops-argo.git"
    target_revision = "main"
    path = "applications/app-in-app/app"
    destination_server = "https://kubernetes.default.svc"
    destination_namespace = "app"
  }
  app_kustomize = {
    name = "app-kustomize"
    argocd_namespace = "argocd"
    project = "default"
    repo_url = "https://github.com/AkulovNV/otus-ol-gitops-argo.git"
    target_revision = "main"
    path = "applications/app-kustomize/app"
    destination_server = "https://kubernetes.default.svc"
    destination_namespace = "app-kustomize"
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