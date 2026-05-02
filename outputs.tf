output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.my_divya_rg.name
}

output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.mydivyarg92392.name
}

output "storage_container_name" {
  description = "The name of the storage container."
  value       = azurerm_storage_container.divya.name
}
# cicd-fix: CI validate repair

