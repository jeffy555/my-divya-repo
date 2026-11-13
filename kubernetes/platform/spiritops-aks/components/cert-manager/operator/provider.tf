terraform {
  required_version = "= 1.17.2"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "= 4.81.0" }
    helm    = { source = "hashicorp/helm", version = "= 3.0.0" }
  }
}
provider "azurerm" {
  features {}
}
provider "helm" {
  kubernetes = {
    config_path = var.kubeconfig_path
  }
}
