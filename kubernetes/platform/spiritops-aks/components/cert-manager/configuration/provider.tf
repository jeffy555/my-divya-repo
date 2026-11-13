terraform {
  required_version = "= 1.17.2"
  required_providers {
    azurerm    = { source = "hashicorp/azurerm", version = "= 4.81.0" }
    kubernetes = { source = "hashicorp/kubernetes", version = "= 2.38.0" }
  }
}
provider "azurerm" {
  features {}
}
provider "kubernetes" {
  config_path = var.kubeconfig_path
}
