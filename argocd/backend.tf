terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
    argocd = {
      source  = "oboukili/argocd"
      version = "6.2.0"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket = "otus-terraform-state-bucket"
    region = "ru-central1"
    key    = "argocd/terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true #
    skip_s3_checksum            = true 

  }
}

provider "yandex" {
  zone      = "ru-central1-a"
}