<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_main"></a> [main](#module\_main) | ../.. |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agree_terms"></a> [agree\_terms](#input\_agree\_terms) | Agreee terms sentry. | `bool` | `true` | no |
| <a name="input_teams"></a> [teams](#input\_teams) | list teams of sentry. | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the organization. | `string` | n/a | yes |
| <a name="input_slug"></a> [slug](#input\_slug) | The name of the organization. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | output id organization |
| <a name="output_instance"></a> [instance](#output\_instance) | output instance organization |
| <a name="output_name"></a> [name](#output\_name) | output name organization |
| <a name="output_teams"></a> [teams](#output\_teams) | output teams of organization |
<!-- END_TF_DOCS -->