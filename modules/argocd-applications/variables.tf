variable "applications" {
  description = "Map of ArgoCD applications to create"
  type = map(object({
    name                 = string
    argocd_namespace     = string
    project              = string
    repo_url             = string
    target_revision      = string
    path                 = string
    destination_server   = string
    destination_namespace= string
  }))
}