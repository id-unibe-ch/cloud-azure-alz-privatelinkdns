locals {
  zone_data_dir = "${path.root}/data/"
  zone_files    = fileset(local.zone_data_dir, "zone_*.yaml")
  zone_data_map = {
    for f in local.zone_files :
    f => yamldecode(file("${local.zone_data_dir}/${f}"))
  }

  zone_data = { for k, v in local.zone_data_map : try(v.domain_name, trimprefix(trimsuffix(k, ".yaml"), "zone_")) => v }
}
