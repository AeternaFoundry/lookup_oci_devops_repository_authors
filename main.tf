data "oci_devops_repository_authors" "devops_repository_authors_lookup" {
  for_each = var.devops_repository_authors_lookup

  repository_id = each.value.repository_id
  ref_name      = each.value.ref_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

