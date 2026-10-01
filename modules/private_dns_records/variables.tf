variable "name" {
  type        = string
  description = "Name of the private dns zone."
}
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group containing the private dns zone."
}
variable "records" {
  type = object({
    a = optional(map(object({
      records = list(string)
      ttl     = optional(number, 3600)
    })), {})
    cname = optional(map(object({
      record = string
      ttl    = optional(number, 3600)
    })), {})
  })
  nullable    = false
  description = <<DESCRIPTION
An object with records for the private dns zone.

The following attributes are supported:

  - a: A map of objects with settings for an a dns record. The key of the map is the name of the record.
    - records: A list of string for the records entry.
    - ttl: A number for the ttl (in seconds) for the entry
  - cname: A map of objects with settings for a cname dns record. The key of the map is the name of the record.
    - record: A string for the record entry.
    - ttl: A number for the ttl (in seconds) for the entry

DESCRIPTION
}

