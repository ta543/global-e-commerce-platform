variable "region" {
  description = "AWS region for the EKS cluster"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  description = "Availability zones for the subnets"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "map_public_ip_on_launch" {
  description = "Whether to enable auto-assign public IP on subnet"
  type        = bool
  default     = true
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.21"
}
