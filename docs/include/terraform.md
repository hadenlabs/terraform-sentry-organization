<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_sentry"></a> [sentry](#requirement\_sentry) | >=0.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sentry"></a> [sentry](#provider\_sentry) | >=0.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sentry_organization.this](https://registry.terraform.io/providers/jianyuan/sentry/latest/docs/resources/organization) | resource |
| [sentry_team.this](https://registry.terraform.io/providers/jianyuan/sentry/latest/docs/resources/team) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agree_terms"></a> [agree\_terms](#input\_agree\_terms) | Agreee terms sentry. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the organization. | `string` | n/a | yes |
| <a name="input_slug"></a> [slug](#input\_slug) | The name of the organization. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | output id organization |
| <a name="output_instance"></a> [instance](#output\_instance) | output instance sentry organization |
| <a name="output_name"></a> [name](#output\_name) | output name organization |
| <a name="output_slug"></a> [slug](#output\_slug) | output slug organization |
<!-- END_TF_DOCS -->