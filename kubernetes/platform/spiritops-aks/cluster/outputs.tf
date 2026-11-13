output "cluster_id" {
  description = "Platform cluster resource ID."
  value       = azurerm_kubernetes_cluster.platform.id
}
