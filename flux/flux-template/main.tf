module "flux_module" {
    source = "../base"

    k8s-cluster = "<cluster>"
    github-private-key = "<private-key>"
    kube-config-path = "<kube-config>"
}