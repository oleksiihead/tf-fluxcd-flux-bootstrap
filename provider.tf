terraform {
  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = "1.0.0-rc.5"
    }
  }
}

provider "flux" {
  kubernetes = {
    host                   = var.config_host
    token                  = var.config_token
    cluster_ca_certificate = var.config_ca
  }
  git = {
    url = "https://github.com/${var.github_repository}.git"
    http = {
      username = "git"
      password = var.github_token
    }
  }
}
