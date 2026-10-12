resource "snowflake_session_policy" "session_policies" {
  for_each = var.session_policies

  database                     = each.value.database
  name                         = each.value.name
  schema                       = each.value.schema
  comment                      = each.value.comment
  session_idle_timeout_mins    = each.value.session_idle_timeout_mins
  session_ui_idle_timeout_mins = each.value.session_ui_idle_timeout_mins

  dynamic "allowed_secondary_roles" {
    for_each = each.value.allowed_secondary_roles != null ? [each.value.allowed_secondary_roles] : []
    content {
      all   = allowed_secondary_roles.value.all
      none  = allowed_secondary_roles.value.none
      roles = allowed_secondary_roles.value.roles
    }
  }

  dynamic "blocked_secondary_roles" {
    for_each = each.value.blocked_secondary_roles != null ? [each.value.blocked_secondary_roles] : []
    content {
      all   = blocked_secondary_roles.value.all
      none  = blocked_secondary_roles.value.none
      roles = blocked_secondary_roles.value.roles
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

