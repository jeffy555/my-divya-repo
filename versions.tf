terraform {
# cicd-fix: CI validate repair
  # cicd-fix: keep one required_providers block; required_version remains in terraform.tf
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
