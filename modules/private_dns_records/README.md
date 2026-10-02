<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.10 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 5.0 |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_a_records"></a> [a\_records](#module\_a\_records) | git::https://github.com/Azure/terraform-azurerm-avm-res-network-privatednszone.git//modules/private_dns_a_record | da8b7599c740d344de310ffa8cbe32c61322a809 |
| <a name="module_cname_records"></a> [cname\_records](#module\_cname\_records) | git::https://github.com/Azure/terraform-azurerm-avm-res-network-privatednszone.git//modules/private_dns_cname_record | da8b7599c740d344de310ffa8cbe32c61322a809 |

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_private_dns_zone.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/private_dns_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_a_records"></a> [a\_records](#input\_a\_records) | A map of objects where each object contains information to create a A record. | <pre>map(object({<br/>    name         = optional(string)<br/>    ttl          = optional(number, 3600)<br/>    ip_addresses = set(string)<br/>  }))</pre> | `{}` | no |
| <a name="input_cname_records"></a> [cname\_records](#input\_cname\_records) | A map of objects where each object contains information to create a CNAME record. | <pre>map(object({<br/>    name  = optional(string)<br/>    ttl   = optional(number, 3600)<br/>    cname = string<br/>  }))</pre> | `{}` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Name of the private dns zone. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group containing the private dns zone. | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_a_records"></a> [a\_records](#output\_a\_records) | n/a |
| <a name="output_cname_records"></a> [cname\_records](#output\_cname\_records) | n/a |
<!-- END_TF_DOCS -->