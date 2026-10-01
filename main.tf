module "private_dns_record" {
  source   = "./modules/private_dns_records"
  for_each = local.zone_data

  name = each.key

  resource_group_name = var.resource_group_name
  records             = each.value.records
}
