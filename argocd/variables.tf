variable "argocd_user" {}
variable "argocd_password" {}
variable "cluster02_bearer_token" {}

variable "repositories_helm_public" {
  type        = list(map(string))
  description = "HELM Repositories that will be connected to ArgoCD"
  default = [
    {
      name       = "docker_io"
      repo       = "registry-1.docker.io"
      project    = "cluster02"
      enable_oci = true
    },
    {
      name       = "prometheus_community"
      repo       = "prometheus-community.github.io/helm-charts"
      project    = "cluster02"
      enable_oci = false
    },
  ]
}

variable "repositories_git" {
  description = "GIT Repositories that will be connected to ArgoCD"
  type        = list(string)
  default = [
    "https://github.com/AkulovNV/otus-ol-gitops-argo.git",
  ]
}

variable "projects" {
  type = any
}