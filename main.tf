resource "azurerm_resource_group" "my_divya_rg" {
  name     = var.name
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "mydivyarg92392" {
  name                     = var.name
  resource_group_name      = azurerm_resource_group.my_divya_rg.name
  location                 = azurerm_resource_group.my_divya_rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  min_tls_version          = "TLS1_2"
# cicd-fix: Updated existing storage account and container arguments to azurerm 4.x names without adding resources.
  # cicd-fix: use azurerm 4.x storage account public access argument name
  allow_nested_items_to_be_public = false
  # cicd-fix: use azurerm 4.x HTTPS-only argument name
  https_traffic_only_enabled = true
  tags                       = var.tags
}

resource "azurerm_storage_container" "divya" {
# cicd-fix: Updated existing storage account and container arguments to azurerm 4.x names without adding resources.
  name = var.name
  # cicd-fix: use azurerm 4.x container storage account ID argument
  storage_account_id    = azurerm_storage_account.mydivyarg92392.id
  container_access_type = var.type
}
# cicd-fix: Updated existing storage account and container arguments to azurerm 4.x names without adding resources.
