data "azurerm_private_dns_zone" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_a_record" "this" {
  for_each = var.records.a

  name                = each.key
  private_dns_zone_id = data.azurerm_private_dns_zone.this.id
  ttl                 = each.value.ttl
  records             = each.value.records
}

resource "azurerm_private_dns_cname_record" "this" {
  for_each = var.records.cname

  name                = each.key
  private_dns_zone_id = data.azurerm_private_dns_zone.this.id
  ttl                 = each.value.ttl
  record              = templatestring(each.value.record, { zone_name = var.name })
}
