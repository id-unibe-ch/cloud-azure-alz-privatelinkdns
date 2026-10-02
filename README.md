<!-- BEGIN_TF_DOCS -->
This repository containts the necessary modules to provide automatic dns record entries for privatelink dns zones.

## Usage

The repository contains allows users of an Corp subscription to handle dns records within privatelink zones.

The terraform deployment process is documented in the repository [https://github.com/id-unibe-ch/cloud-azure-alz-templates](https://github.com/id-unibe-ch/cloud-azure-alz-templates).

## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.10 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_private_dns_record"></a> [private\_dns\_record](#module\_private\_dns\_record) | ./modules/private_dns_records | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group containing the private dns zone. | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Subscription id in which the resources are located. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->