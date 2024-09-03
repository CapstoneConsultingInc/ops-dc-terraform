module "flux_module" {
    source = "../base"

    k8s-cluster = "test"
    github-private-key = "/home/stwall/.ssh/id_ed25519"
    kube-config-path = "/home/stwall/.kube/config"
}