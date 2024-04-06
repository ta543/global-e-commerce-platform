output "gke_cluster_name" {
  description = "The name of the GKE cluster"
  value       = google_container_cluster.gke_cluster.name
}

output "gke_cluster_endpoint" {
  description = "The endpoint of the GKE cluster"
  value       = google_container_cluster.gke_cluster.endpoint
}

output "gke_cluster_master_version" {
  description = "The Kubernetes version of the GKE cluster master"
  value       = google_container_cluster.gke_cluster.master_version
}
