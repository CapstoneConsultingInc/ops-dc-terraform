resource "flux_bootstrap_git" "github" {
  path = "./${var.k8s-cluster}"
}
