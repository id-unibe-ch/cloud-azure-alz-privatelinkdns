output "zones" {
  value = { for k, v in module.private_dns_record : k => {
    a_records = { for k2, v2 in v.a_records : k2 => {
      records = v2.records
      ttl     = v2.ttl
    } }
    cname_records = { for k2, v2 in v.cname_records : k2 => {
      record = v2.record
      ttl    = v2.ttl
    } }

  } }
}
