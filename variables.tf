variable "session_policies" {
  description = <<EOT
Map of session_policies, attributes below
Required:
    - database
    - name
    - schema
Optional:
    - comment
    - session_idle_timeout_mins
    - session_ui_idle_timeout_mins
    - allowed_secondary_roles (block):
        - all (optional)
        - none (optional)
        - roles (optional)
    - blocked_secondary_roles (block):
        - all (optional)
        - none (optional)
        - roles (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database                     = string
    name                         = string
    schema                       = string
    comment                      = optional(string)
    session_idle_timeout_mins    = optional(number)
    session_ui_idle_timeout_mins = optional(number)
    allowed_secondary_roles = optional(object({
      all   = optional(bool)
      none  = optional(bool)
      roles = optional(set(string))
    }))
    blocked_secondary_roles = optional(object({
      all   = optional(bool)
      none  = optional(bool)
      roles = optional(set(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

