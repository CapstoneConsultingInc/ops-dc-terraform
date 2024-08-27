module "flux_module" {
    source = "../base"

    k8s-cluster = "production"
    github-private-key = "/home/stwall/.ssh/id_ed25519"
    kube-config-path = "~/.kube/config"
}