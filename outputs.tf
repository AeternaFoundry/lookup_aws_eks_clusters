output "eks_clusters_lookup_id" {
  description = "Map of id values across all eks_clusters_lookup, keyed the same as var.eks_clusters_lookup"
  value       = { for k, v in data.aws_eks_clusters.eks_clusters_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_clusters_lookup_names" {
  description = "Map of names values across all eks_clusters_lookup, keyed the same as var.eks_clusters_lookup"
  value       = { for k, v in data.aws_eks_clusters.eks_clusters_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "eks_clusters_lookup_region" {
  description = "Map of region values across all eks_clusters_lookup, keyed the same as var.eks_clusters_lookup"
  value       = { for k, v in data.aws_eks_clusters.eks_clusters_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

