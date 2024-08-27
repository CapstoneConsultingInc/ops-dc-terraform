terraform {
  required_version = ">= 1.4.2"

  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.26.3"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.2"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.10.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
  insecure    = "true"
}

provider "flux" {
  kubernetes = {
    config_path = "~/.kube/config"
    insecure    = "true"
  }

  git = {
    url    = "ssh://git@github.com/CapstoneConsultingInc/ops-infra.git"
    branch = "main"
    ssh = {
      username    = "git"
      private_key = file("/home/stwall/.ssh/id_ed25519")
    }
  }
}

resource "flux_bootstrap_git" "github" {
  path = "./clusters/production"
}
