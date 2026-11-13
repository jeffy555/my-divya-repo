resource "helm_release" "component" {
  name             = "cert-manager"
  chart            = "${path.module}/../upstream/chart.tgz"
  version          = "v1.21.3"
  namespace        = local.namespace
  create_namespace = true
  values           = [file("${path.module}/../values.yaml")]
  wait             = true
  wait_for_jobs    = true
  timeout          = 900
  atomic           = false
}

