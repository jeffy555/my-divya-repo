variable "location" {
  description = "Azure region for all resources."
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
}

variable "storage_account_tier" {
  description = "The tier to use for the storage account (Standard or Premium)."
  type        = string
}

variable "storage_account_replication_type" {
  description = "The replication type to use for the storage account (LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS)."
  type        = string
}


variable "name" {
  description = "Value for name"
  type        = string
}

variable "type" {
  description = "Value for type"
  type        = string
}

variable "environment" {
  description = "Value for environment"
  type        = string
}

variable "owner" {
  description = "Value for owner"
  type        = string
}