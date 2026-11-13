resource "helm_release" "component" {
  name             = "keda"
  chart            = "${path.module}/../upstream/chart.tgz"
  version          = "2.21.0"
  namespace        = local.namespace
  create_namespace = true
  values           = [file("${path.module}/../values.yaml")]
  wait             = true
  wait_for_jobs    = true
  timeout          = 900
  atomic           = false
}
