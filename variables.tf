variable "devops_repository_authors_lookup" {
  description = <<EOT
Map of devops_repository_authors_lookup, attributes below
Required:
    - repository_id
Optional:
    - ref_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    repository_id = string
    ref_name      = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

