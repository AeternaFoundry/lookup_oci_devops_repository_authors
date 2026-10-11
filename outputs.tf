output "devops_repository_authors_lookup_id" {
  description = "Map of id values across all devops_repository_authors_lookup, keyed the same as var.devops_repository_authors_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_devops_repository_authors.devops_repository_authors_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_repository_authors_lookup_filter" {
  description = "Map of filter values across all devops_repository_authors_lookup, keyed the same as var.devops_repository_authors_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_devops_repository_authors.devops_repository_authors_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "devops_repository_authors_lookup_ref_name" {
  description = "Map of ref_name values across all devops_repository_authors_lookup, keyed the same as var.devops_repository_authors_lookup except keys with no ref_name are omitted"
  value       = { for k, v in data.oci_devops_repository_authors.devops_repository_authors_lookup : k => v.ref_name if v.ref_name != null && length(v.ref_name) > 0 }
}
output "devops_repository_authors_lookup_repository_author_collection" {
  description = "Map of repository_author_collection values across all devops_repository_authors_lookup, keyed the same as var.devops_repository_authors_lookup except keys with no repository_author_collection are omitted"
  value       = { for k, v in data.oci_devops_repository_authors.devops_repository_authors_lookup : k => v.repository_author_collection if v.repository_author_collection != null && length(v.repository_author_collection) > 0 }
}
output "devops_repository_authors_lookup_repository_id" {
  description = "Map of repository_id values across all devops_repository_authors_lookup, keyed the same as var.devops_repository_authors_lookup except keys with no repository_id are omitted"
  value       = { for k, v in data.oci_devops_repository_authors.devops_repository_authors_lookup : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}

