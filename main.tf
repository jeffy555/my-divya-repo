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
  allow_blob_public_access = false
  enable_https_traffic_only = true
  tags                     = var.tags
}

resource "azurerm_storage_container" "divya" {
  name                  = var.name
  storage_account_name  = azurerm_storage_account.mydivyarg92392.name
  container_access_type = var.type
}