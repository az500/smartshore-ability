output "cluster_endpoint" {
  description = "EKS endpoint:"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "SD IDs:"
  value       = module.eks.cluster_security_group_id
}

output "kubectl_config" {
  description = "kubectl config:"
  value       = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  description = "Kubernetes config:"
  value       = module.eks.config_map_aws_auth
}

