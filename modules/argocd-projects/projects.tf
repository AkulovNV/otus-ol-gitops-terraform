resource "argocd_project" "project" {
  for_each = var.projects

  metadata {
    name = each.value.name
  }
  spec {
    description       = each.value.description
    source_namespaces = ["*"]
    source_repos      = ["*"]
    destination {
      server    = each.value.server
      name      = each.value.cluster_connected
      namespace = "*"
    }
    cluster_resource_whitelist {
      group = "*"
      kind  = "*"
    }
  }
}
