output "cloud_aws_eu_sovereign_integrations_id" {
  description = "Map of id values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => v.id }
}
output "cloud_aws_eu_sovereign_integrations_account_id" {
  description = "Map of account_id values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => v.account_id }
}
output "cloud_aws_eu_sovereign_integrations_billing" {
  description = "Map of billing values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => one(v.billing) }
}
output "cloud_aws_eu_sovereign_integrations_cloudtrail" {
  description = "Map of cloudtrail values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => one(v.cloudtrail) }
}
output "cloud_aws_eu_sovereign_integrations_linked_account_id" {
  description = "Map of linked_account_id values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => v.linked_account_id }
}
output "cloud_aws_eu_sovereign_integrations_x_ray" {
  description = "Map of x_ray values across all cloud_aws_eu_sovereign_integrations, keyed the same as var.cloud_aws_eu_sovereign_integrations"
  value       = { for k, v in newrelic_cloud_aws_eu_sovereign_integrations.cloud_aws_eu_sovereign_integrations : k => one(v.x_ray) }
}

