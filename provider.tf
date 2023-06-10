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
    config_path = var.config_path
  }
  git = {
    url = "https://github.com/${var.github_repository}.git"
    http = {
      username = "git"
      password = var.github_token
    }
  }
}
