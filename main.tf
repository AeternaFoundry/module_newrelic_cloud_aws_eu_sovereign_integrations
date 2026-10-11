resource "newrelic_cloud_aws_eu_sovereign_integrations" "cloud_aws_eu_sovereign_integrations" {
  for_each = var.cloud_aws_eu_sovereign_integrations

  linked_account_id = each.value.linked_account_id
  account_id        = each.value.account_id

  dynamic "billing" {
    for_each = each.value.billing != null ? [each.value.billing] : []
    content {
      metrics_polling_interval = billing.value.metrics_polling_interval
    }
  }

  dynamic "cloudtrail" {
    for_each = each.value.cloudtrail != null ? [each.value.cloudtrail] : []
    content {
      aws_regions              = cloudtrail.value.aws_regions
      metrics_polling_interval = cloudtrail.value.metrics_polling_interval
    }
  }

  dynamic "x_ray" {
    for_each = each.value.x_ray != null ? [each.value.x_ray] : []
    content {
      aws_regions              = x_ray.value.aws_regions
      metrics_polling_interval = x_ray.value.metrics_polling_interval
    }
  }
}

