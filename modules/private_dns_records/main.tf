data "azurerm_private_dns_zone" "this" {
  name                = var.domain_name
  resource_group_name = var.resource_group_name
}

module "a_records" {
  source = "git::https://github.com/Azure/terraform-azurerm-avm-res-network-privatednszone.git//modules/private_dns_a_record?ref=da8b7599c740d344de310ffa8cbe32c61322a809" # v0.5.0

  for_each = var.a_records

  name         = coalesce(each.value.name, each.key)
  parent_id    = data.azurerm_private_dns_zone.this.id
  ttl          = each.value.ttl
  ip_addresses = each.value.ip_addresses
}

module "cname_records" {
  source = "git::https://github.com/Azure/terraform-azurerm-avm-res-network-privatednszone.git//modules/private_dns_cname_record?ref=da8b7599c740d344de310ffa8cbe32c61322a809" # v0.5.0

  for_each = var.cname_records

  name      = coalesce(each.value.name, each.key)
  parent_id = data.azurerm_private_dns_zone.this.id
  ttl       = each.value.ttl
  cname     = templatestring(each.value.cname, { domain_name = var.domain_name })
}

