# Complete Aiven MySQL Cluster

Configuration in this directory creates an Aiven MySQL cluster with following features:

- Aiven MySQL Cluster
- Aiven MySQL User
- Aiven MySQL Database

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_database"></a> [database](#module\_database) | ../../modules/database | n/a |
| <a name="module_mysql"></a> [mysql](#module\_mysql) | ../.. | n/a |
| <a name="module_user"></a> [user](#module\_user) | ../../modules/user | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the service database. | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The actual name of the PG User. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->