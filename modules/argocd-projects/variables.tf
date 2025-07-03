variable "projects" {
  type = map(object({
    server            = string
    cluster_connected = string
    description       = string
    repositories_git  = list(string)
    name              = string
  }))
}