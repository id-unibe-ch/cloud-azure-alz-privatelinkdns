variable "domain_name" {
  type        = string
  description = "Name of the private dns zone."
}
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group containing the private dns zone."
}

variable "a_records" {
  type = map(object({
    name         = optional(string)
    ttl          = optional(number, 600)
    ip_addresses = set(string)
  }))
  default     = {}
  description = "A map of objects where each object contains information to create a A record."
}

variable "cname_records" {
  type = map(object({
    name  = optional(string)
    ttl   = optional(number, 600)
    cname = string
  }))
  default     = {}
  description = "A map of objects where each object contains information to create a CNAME record."
}

