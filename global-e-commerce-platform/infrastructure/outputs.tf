output "aws_cluster_endpoint" {
  value = module.aws.cluster_endpoint
}

output "gcp_cluster_endpoint" {
  value = module.google-cloud.gke_cluster_endpoint
}

output "azure_cluster_id" {
  value = module.azure.aks_cluster_id
}

