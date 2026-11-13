variable "resource_group" {
  description = "Reviewed platform resource group."
  type        = string
}

variable "location" {
  description = "Reviewed platform location."
  type        = string
}

variable "cluster_name" {
  description = "Reviewed platform cluster name."
  type        = string
}

variable "kubernetes_version" {
  description = "Reviewed platform kubernetes version."
  type        = string
}

variable "node_size" {
  description = "Reviewed platform node size."
  type        = string
}

variable "node_count" {
  description = "Reviewed platform node count."
  type        = number
}

variable "private_cluster" {
  description = "Reviewed platform private cluster."
  type        = bool
}

variable "authorized_cidrs" {
  description = "Reviewed platform authorized cidrs."
  type        = list(string)
}

variable "tags" {
  description = "Reviewed platform tags."
  type        = map(string)
}

variable "registry_name" {
  description = "Reviewed platform registry name."
  type        = string
}
