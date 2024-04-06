output "aks_cluster_id" {
  description = "The ID of the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks.id
}

output "aks_cluster_name" {
  description = "The name of the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_cluster_kube_config" {
  description = "The kubeconfig for connecting to the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
}
