resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = { Name = "${var.cluster_name}-vpc" }
}

resource "aws_subnet" "eks_subnet" {
  count                   = length(var.subnet_cidrs)
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = element(var.subnet_cidrs, count.index)
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags                    = { Name = "${var.cluster_name}-subnet-${count.index}" }
}

resource "aws_iam_role" "eks_cluster_role" {
  name = "${var.cluster_name}-role"

  assume_role_policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [{
      Action    = "sts:AssumeRole",
      Principal = { Service = "eks.amazonaws.com" },
      Effect    = "Allow",
      Sid       = "",
    }]
  })

  tags = { Name = "${var.cluster_name}-eks-role" }
}

resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = aws_subnet.eks_subnet[*].id
  }

  version = var.cluster_version
}
