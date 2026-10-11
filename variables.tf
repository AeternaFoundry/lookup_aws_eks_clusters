variable "eks_clusters_lookup" {
  description = <<EOT
Map of eks_clusters_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

