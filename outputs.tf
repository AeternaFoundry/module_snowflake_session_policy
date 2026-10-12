output "session_policies_id" {
  description = "Map of id values across all session_policies, keyed the same as var.session_policies except keys with no id are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "session_policies_allowed_secondary_roles" {
  description = "Map of allowed_secondary_roles values across all session_policies, keyed the same as var.session_policies except keys with no allowed_secondary_roles are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => one(v.allowed_secondary_roles) if v.allowed_secondary_roles != null && length(v.allowed_secondary_roles) > 0 }
}
output "session_policies_blocked_secondary_roles" {
  description = "Map of blocked_secondary_roles values across all session_policies, keyed the same as var.session_policies except keys with no blocked_secondary_roles are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => one(v.blocked_secondary_roles) if v.blocked_secondary_roles != null && length(v.blocked_secondary_roles) > 0 }
}
output "session_policies_comment" {
  description = "Map of comment values across all session_policies, keyed the same as var.session_policies except keys with no comment are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "session_policies_database" {
  description = "Map of database values across all session_policies, keyed the same as var.session_policies except keys with no database are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.database if v.database != null && length(v.database) > 0 }
}
output "session_policies_describe_output" {
  description = "Map of describe_output values across all session_policies, keyed the same as var.session_policies except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "session_policies_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all session_policies, keyed the same as var.session_policies except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "session_policies_name" {
  description = "Map of name values across all session_policies, keyed the same as var.session_policies except keys with no name are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "session_policies_schema" {
  description = "Map of schema values across all session_policies, keyed the same as var.session_policies except keys with no schema are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "session_policies_session_idle_timeout_mins" {
  description = "Map of session_idle_timeout_mins values across all session_policies, keyed the same as var.session_policies except keys with no session_idle_timeout_mins are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.session_idle_timeout_mins if v.session_idle_timeout_mins != null }
}
output "session_policies_session_ui_idle_timeout_mins" {
  description = "Map of session_ui_idle_timeout_mins values across all session_policies, keyed the same as var.session_policies except keys with no session_ui_idle_timeout_mins are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.session_ui_idle_timeout_mins if v.session_ui_idle_timeout_mins != null }
}
output "session_policies_show_output" {
  description = "Map of show_output values across all session_policies, keyed the same as var.session_policies except keys with no show_output are omitted"
  value       = { for k, v in snowflake_session_policy.session_policies : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

