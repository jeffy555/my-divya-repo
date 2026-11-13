output "issuer_name" {
  description = "Bootstrap issuer (not a public trust issuer)."
  value       = kubernetes_manifest.issuer.manifest.metadata.name
}
