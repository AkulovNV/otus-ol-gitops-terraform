resource "argocd_application" "application" {
  for_each = var.applications

  metadata {
    name      = each.value.name
    namespace = each.value.argocd_namespace
  }

  spec {
    project = each.value.project

    source {
      repo_url        = each.value.repo_url
      target_revision = each.value.target_revision
      path            = each.value.path

      dynamic "plugin" {
        for_each = each.value.plugin != null ? [each.value.plugin] : []
        content {
          name = plugin.value.name

          dynamic "env" {
            for_each = plugin.value.env != null ? plugin.value.env : {}
            content {
              name  = env.key
              value = env.value
            }
          }
        }
      }
    }

    destination {
      server    = each.value.destination_server
      namespace = each.value.destination_namespace
    }

    sync_policy {
      automated {
        prune     = true
        self_heal = true
      }
      sync_options = [
        "CreateNamespace=true",
      ]
    }
  }
}
