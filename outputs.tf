output "cloud_aws_eu_sovereign_integrations_id" {
  description = "Map of id values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations except keys with no id are omitted"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_aws_eu_sovereign_integrations_account_id" {
  description = "Map of account_id values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations except keys with no account_id are omitted"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => v.account_id if v.account_id != null }
}
output "cloud_aws_eu_sovereign_integrations_billing" {
  description = "Map of billing values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations except keys with no billing are omitted"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => one(v.billing) if v.billing != null && length(v.billing) > 0 }
}
output "cloud_aws_eu_sovereign_integrations_cloudtrail" {
  description = "Map of cloudtrail values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations except keys with no cloudtrail are omitted"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => one(v.cloudtrail) if v.cloudtrail != null && length(v.cloudtrail) > 0 }
}
output "cloud_aws_eu_sovereign_integrations_linked_account_id" {
  description = "Map of linked_account_id values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations except keys with no linked_account_id are omitted"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => v.linked_account_id if v.linked_account_id != null }
}
output "cloud_aws_eu_sovereign_integrations_x_ray" {
  description = "Map of x_ray values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations except keys with no x_ray are omitted"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => one(v.x_ray) if v.x_ray != null && length(v.x_ray) > 0 }
}

