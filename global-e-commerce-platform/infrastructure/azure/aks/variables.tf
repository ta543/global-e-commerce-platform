variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "aks-resource-group"
}

variable "location" {
  description = "The Azure location to deploy resources."
  type        = string
  default     = "East US"
}

variable "vnet_address_space" {
  description = "The address space for the AKS virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the AKS subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "my-aks-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
  // It's typically not advisable to have a default value for dns_prefix as it needs to be unique.
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "The size of the VM instances in the AKS cluster."
  type        = string
  default     = "Standard_DS2_v2"
}
