variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "gcp_region" {
  description = "The GCP region for deploying the GKE cluster"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR range for the subnet"
  type        = string
}

variable "initial_node_count" {
  description = "The initial number of nodes for the GKE cluster"
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "The machine type for the GKE nodes"
  type        = string
  default     = "e2-medium"
}
