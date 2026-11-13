data "azurerm_client_config" "current" {}
resource "azurerm_resource_group" "platform" {
  name     = var.resource_group
  location = var.location
  tags     = local.required_tags
  lifecycle { prevent_destroy = true }
}
resource "azurerm_kubernetes_cluster" "platform" {
  name                              = var.cluster_name
  location                          = azurerm_resource_group.platform.location
  resource_group_name               = azurerm_resource_group.platform.name
  dns_prefix                        = var.cluster_name
  kubernetes_version                = var.kubernetes_version
  sku_tier                          = "Standard"
  private_cluster_enabled           = var.private_cluster
  local_account_disabled            = true
  role_based_access_control_enabled = true
  oidc_issuer_enabled               = true
  workload_identity_enabled         = true
  azure_active_directory_role_based_access_control {
    azure_rbac_enabled = true
    tenant_id          = data.azurerm_client_config.current.tenant_id
  }
  api_server_access_profile { authorized_ip_ranges = var.authorized_cidrs }
  identity { type = "SystemAssigned" }
  default_node_pool {
    name                         = "system"
    vm_size                      = var.node_size
    node_count                   = var.node_count
    only_critical_addons_enabled = false
    upgrade_settings { max_surge = "10%" }
  }
  network_profile {
    network_plugin = "azure"
    outbound_type  = "loadBalancer"
  }
  tags = local.required_tags
  lifecycle { prevent_destroy = true }
}
resource "azurerm_container_registry" "platform" {

  name = var.registry_name

  location = azurerm_resource_group.platform.location

  resource_group_name = azurerm_resource_group.platform.name

  sku = "Basic"

  admin_enabled = false

  tags = local.required_tags

  lifecycle { prevent_destroy = true }

}

resource "azurerm_role_assignment" "registry_pull" {

  scope = azurerm_container_registry.platform.id

  role_definition_name = "AcrPull"

  principal_id = azurerm_kubernetes_cluster.platform.kubelet_identity[0].object_id

  principal_type = "ServicePrincipal"

  skip_service_principal_aad_check = true

}

