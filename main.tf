resource "databricks_notebook" "notebooks" {
  for_each = var.notebooks

  path           = each.value.path
  content_base64 = each.value.content_base64
  format         = each.value.format
  language       = each.value.language
  md5            = each.value.md5
  object_id      = each.value.object_id
  object_type    = each.value.object_type
  source         = each.value.source

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

