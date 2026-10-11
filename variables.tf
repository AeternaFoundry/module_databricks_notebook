variable "notebooks" {
  description = <<EOT
Map of notebooks, attributes below
Required:
    - path
Optional:
    - content_base64
    - format
    - language
    - md5
    - object_id
    - object_type
    - source
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    path           = string
    content_base64 = optional(string)
    format         = optional(string)
    language       = optional(string)
    md5            = optional(string)
    object_id      = optional(number)
    object_type    = optional(string)
    source         = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.notebooks : (
        v.language == null || (contains(["SCALA", "PYTHON", "R", "SQL"], v.language))
      )
    ])
    error_message = "must be one of: \"SCALA\", \"PYTHON\", \"R\", \"SQL\""
  }
  validation {
    condition = alltrue([
      for k, v in var.notebooks : (
        v.format == null || (contains(["SOURCE", "DBC", "JUPYTER"], v.format))
      )
    ])
    error_message = "must be one of: \"SOURCE\", \"DBC\", \"JUPYTER\""
  }
}

