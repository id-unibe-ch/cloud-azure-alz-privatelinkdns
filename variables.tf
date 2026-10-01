variable "subscription_id" {
  type        = string
  description = "Subscription id in which the resources are located."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group containing the private dns zone."
}
