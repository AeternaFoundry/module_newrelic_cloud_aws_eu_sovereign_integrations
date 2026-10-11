variable "cloud_aws_eu_sovereign_integrations" {
  description = <<EOT
Map of cloud_aws_eu_sovereign_integrations, attributes below
Required:
    - linked_account_id
Optional:
    - account_id
    - billing (block):
        - metrics_polling_interval (optional)
    - cloudtrail (block):
        - aws_regions (optional)
        - metrics_polling_interval (optional)
    - x_ray (block):
        - aws_regions (optional)
        - metrics_polling_interval (optional)
EOT

  type = map(object({
    linked_account_id = number
    account_id        = optional(number)
    billing = optional(object({
      metrics_polling_interval = optional(number)
    }))
    cloudtrail = optional(object({
      aws_regions              = optional(list(string))
      metrics_polling_interval = optional(number)
    }))
    x_ray = optional(object({
      aws_regions              = optional(list(string))
      metrics_polling_interval = optional(number)
    }))
  }))
}

