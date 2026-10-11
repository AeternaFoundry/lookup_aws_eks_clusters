data "aws_eks_clusters" "eks_clusters_lookup" {
  for_each = var.eks_clusters_lookup

  region = each.value.region
}

