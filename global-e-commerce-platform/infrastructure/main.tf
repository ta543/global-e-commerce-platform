module "eks" {
  source           = "./aws/eks"
  region           = "us-west-2"
  cluster_name     = "my-eks-cluster"
  vpc_cidr         = "10.0.0.0/16"
  subnet_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
  azs              = ["us-west-2a", "us-west-2b"]
  map_public_ip_on_launch = true
  cluster_version  = "1.21"
}

module "vpc" {
  source   = "./aws/vpc"
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "my-vpc"
  
  subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  azs          = ["us-west-2a", "us-west-2b"]
  
  map_public_ip_on_launch = true
}

module "aws" {
  source = "./aws"
}

module "gcp" {
  source = "./gcp"
}

module "azure" {
  source = "./azure"
}

module "aks" {
  source              = "./azure/aks"
  dns_prefix          = "uniqueaksdns"
}


