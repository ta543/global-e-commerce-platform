output "cluster_id" {
  description = "The ID of the EKS cluster."
  value       = aws_eks_cluster.cluster.id
}

output "cluster_arn" {
  description = "The ARN of the EKS cluster."
  value       = aws_eks_cluster.cluster.arn
}

output "cluster_endpoint" {
  description = "The endpoint for the EKS cluster API server."
  value       = aws_eks_cluster.cluster.endpoint
}

output "vpc_id" {
  description = "The ID of the VPC where the EKS cluster is deployed."
  value       = aws_vpc.eks_vpc.id
}

output "subnet_ids" {
  description = "The IDs of the subnets used by the EKS cluster."
  value       = aws_subnet.eks_subnet[*].id
}
