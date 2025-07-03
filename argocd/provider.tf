provider "argocd" {
  server_addr = "localhost:8080"
  username    = var.argocd_user
  password    = var.argocd_password
  insecure    = true
}
