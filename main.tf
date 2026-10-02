module "private_dns_record" {
  source   = "./modules/private_dns_records"
  for_each = local.zone_data

  domain_name         = each.key
  resource_group_name = var.resource_group_name

  a_records     = try(each.value.a_records, {})
  cname_records = try(each.value.cname_records, {})
}
