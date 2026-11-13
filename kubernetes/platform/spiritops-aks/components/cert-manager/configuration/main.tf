resource "kubernetes_manifest" "issuer" {
  manifest = {
    apiVersion = "cert-manager.io/v1"
    kind       = "Issuer"
    metadata   = { name = "platform-selfsigned", namespace = local.namespace }
    spec       = { selfSigned = {} }
  }
}
