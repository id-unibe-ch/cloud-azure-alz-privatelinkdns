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

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_private_dns_a_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record) | resource |
| [azurerm_private_dns_cname_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_cname_record) | resource |
| [azurerm_private_dns_zone.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/private_dns_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_name"></a> [name](#input\_name) | Name of the private dns zone. | `string` | n/a | yes |
| <a name="input_records"></a> [records](#input\_records) | An object with records for the private dns zone.<br/><br/>The following attributes are supported:<br/><br/>  - a: A map of objects with settings for an a dns record. The key of the map is the name of the record.<br/>    - records: A list of string for the records entry.<br/>    - ttl: A number for the ttl (in seconds) for the entry<br/>  - cname: A map of objects with settings for a cname dns record. The key of the map is the name of the record.<br/>    - record: A string for the record entry.<br/>    - ttl: A number for the ttl (in seconds) for the entry | <pre>object({<br/>    a = optional(map(object({<br/>      records = list(string)<br/>      ttl     = optional(number, 3600)<br/>    })), {})<br/>    cname = optional(map(object({<br/>      record = string<br/>      ttl    = optional(number, 3600)<br/>    })), {})<br/>  })</pre> | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group containing the private dns zone. | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_a_records"></a> [a\_records](#output\_a\_records) | n/a |
| <a name="output_cname_records"></a> [cname\_records](#output\_cname\_records) | n/a |
<!-- END_TF_DOCS -->