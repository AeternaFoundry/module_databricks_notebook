output "notebooks_id" {
  description = "Map of id values across all notebooks, keyed the same as var.notebooks except keys with no id are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "notebooks_content_base64" {
  description = "Map of content_base64 values across all notebooks, keyed the same as var.notebooks except keys with no content_base64 are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.content_base64 if v.content_base64 != null && length(v.content_base64) > 0 }
}
output "notebooks_format" {
  description = "Map of format values across all notebooks, keyed the same as var.notebooks except keys with no format are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.format if v.format != null && length(v.format) > 0 }
}
output "notebooks_language" {
  description = "Map of language values across all notebooks, keyed the same as var.notebooks except keys with no language are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.language if v.language != null && length(v.language) > 0 }
}
output "notebooks_md5" {
  description = "Map of md5 values across all notebooks, keyed the same as var.notebooks except keys with no md5 are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.md5 if v.md5 != null && length(v.md5) > 0 }
}
output "notebooks_object_id" {
  description = "Map of object_id values across all notebooks, keyed the same as var.notebooks except keys with no object_id are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.object_id if v.object_id != null }
}
output "notebooks_object_type" {
  description = "Map of object_type values across all notebooks, keyed the same as var.notebooks except keys with no object_type are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.object_type if v.object_type != null && length(v.object_type) > 0 }
}
output "notebooks_path" {
  description = "Map of path values across all notebooks, keyed the same as var.notebooks except keys with no path are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.path if v.path != null && length(v.path) > 0 }
}
output "notebooks_provider_config" {
  description = "Map of provider_config values across all notebooks, keyed the same as var.notebooks except keys with no provider_config are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "notebooks_source" {
  description = "Map of source values across all notebooks, keyed the same as var.notebooks except keys with no source are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.source if v.source != null && length(v.source) > 0 }
}
output "notebooks_url" {
  description = "Map of url values across all notebooks, keyed the same as var.notebooks except keys with no url are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.url if v.url != null && length(v.url) > 0 }
}
output "notebooks_workspace_path" {
  description = "Map of workspace_path values across all notebooks, keyed the same as var.notebooks except keys with no workspace_path are omitted"
  value       = { for k, v in databricks_notebook.notebooks : k => v.workspace_path if v.workspace_path != null && length(v.workspace_path) > 0 }
}

