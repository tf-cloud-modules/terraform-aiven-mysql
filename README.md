# Aiven MySQL Terraform module

Terraform module which creates Aiven MySQL resources

## Usage

```hcl
module "mysql" {
  source       = "tf-cloud-modules/mysql/aiven"
  project      = "test"
  service_name = "test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 3.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_mysql.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/mysql) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_binlog_retention_period"></a> [binlog\_retention\_period](#input\_binlog\_retention\_period) | The minimum amount of time in seconds to keep binlog entries before deletion. | `string` | `""` | no |
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_connect_timeout"></a> [connect\_timeout](#input\_connect\_timeout) | connect\_timeout | `string` | `""` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_default_time_zone"></a> [default\_time\_zone](#input\_default\_time\_zone) | default\_time\_zone | `string` | `""` | no |
| <a name="input_group_concat_max_len"></a> [group\_concat\_max\_len](#input\_group\_concat\_max\_len) | group\_concat\_max\_len | `string` | `""` | no |
| <a name="input_information_schema_stats_expiry"></a> [information\_schema\_stats\_expiry](#input\_information\_schema\_stats\_expiry) | information\_schema\_stats\_expiry | `string` | `""` | no |
| <a name="input_innodb_change_buffer_max_size"></a> [innodb\_change\_buffer\_max\_size](#input\_innodb\_change\_buffer\_max\_size) | innodb\_change\_buffer\_max\_size | `string` | `""` | no |
| <a name="input_innodb_flush_neighbors"></a> [innodb\_flush\_neighbors](#input\_innodb\_flush\_neighbors) | innodb\_flush\_neighbors | `string` | `""` | no |
| <a name="input_innodb_ft_min_token_size"></a> [innodb\_ft\_min\_token\_size](#input\_innodb\_ft\_min\_token\_size) | innodb\_ft\_min\_token\_size | `string` | `""` | no |
| <a name="input_innodb_ft_server_stopword_table"></a> [innodb\_ft\_server\_stopword\_table](#input\_innodb\_ft\_server\_stopword\_table) | innodb\_ft\_server\_stopword\_table | `string` | `""` | no |
| <a name="input_innodb_lock_wait_timeout"></a> [innodb\_lock\_wait\_timeout](#input\_innodb\_lock\_wait\_timeout) | innodb\_lock\_wait\_timeout | `string` | `""` | no |
| <a name="input_innodb_log_buffer_size"></a> [innodb\_log\_buffer\_size](#input\_innodb\_log\_buffer\_size) | innodb\_log\_buffer\_size | `string` | `""` | no |
| <a name="input_innodb_online_alter_log_max_size"></a> [innodb\_online\_alter\_log\_max\_size](#input\_innodb\_online\_alter\_log\_max\_size) | innodb\_online\_alter\_log\_max\_size | `string` | `""` | no |
| <a name="input_innodb_print_all_deadlocks"></a> [innodb\_print\_all\_deadlocks](#input\_innodb\_print\_all\_deadlocks) | innodb\_print\_all\_deadlocks | `string` | `""` | no |
| <a name="input_innodb_read_io_threads"></a> [innodb\_read\_io\_threads](#input\_innodb\_read\_io\_threads) | innodb\_read\_io\_threads | `string` | `""` | no |
| <a name="input_innodb_rollback_on_timeout"></a> [innodb\_rollback\_on\_timeout](#input\_innodb\_rollback\_on\_timeout) | innodb\_rollback\_on\_timeout | `string` | `""` | no |
| <a name="input_innodb_thread_concurrency"></a> [innodb\_thread\_concurrency](#input\_innodb\_thread\_concurrency) | innodb\_thread\_concurrency | `string` | `""` | no |
| <a name="input_innodb_write_io_threads"></a> [innodb\_write\_io\_threads](#input\_innodb\_write\_io\_threads) | innodb\_write\_io\_threads | `string` | `""` | no |
| <a name="input_interactive_timeout"></a> [interactive\_timeout](#input\_interactive\_timeout) | interactive\_timeout | `string` | `""` | no |
| <a name="input_internal_tmp_mem_storage_engine"></a> [internal\_tmp\_mem\_storage\_engine](#input\_internal\_tmp\_mem\_storage\_engine) | internal\_tmp\_mem\_storage\_engine | `string` | `""` | no |
| <a name="input_ip_filter"></a> [ip\_filter](#input\_ip\_filter) | IP filter. | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_long_query_time"></a> [long\_query\_time](#input\_long\_query\_time) | long\_query\_time | `string` | `""` | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_max_allowed_packet"></a> [max\_allowed\_packet](#input\_max\_allowed\_packet) | max\_allowed\_packet | `string` | `""` | no |
| <a name="input_max_heap_table_size"></a> [max\_heap\_table\_size](#input\_max\_heap\_table\_size) | max\_heap\_table\_size | `string` | `""` | no |
| <a name="input_migration_dbname"></a> [migration\_dbname](#input\_migration\_dbname) | Database name for bootstrapping the initial connection. | `string` | `""` | no |
| <a name="input_migration_host"></a> [migration\_host](#input\_migration\_host) | Hostname or IP address of the server where to migrate data from. | `string` | `""` | no |
| <a name="input_migration_ignore_dbs"></a> [migration\_ignore\_dbs](#input\_migration\_ignore\_dbs) | Comma-separated list of databases, which should be ignored during migration. | `string` | `""` | no |
| <a name="input_migration_method"></a> [migration\_method](#input\_migration\_method) | The migration method to be used. | `string` | `""` | no |
| <a name="input_migration_password"></a> [migration\_password](#input\_migration\_password) | Password for authentication with the server where to migrate data from. | `string` | `""` | no |
| <a name="input_migration_port"></a> [migration\_port](#input\_migration\_port) | Port number of the server where to migrate data from. | `string` | `""` | no |
| <a name="input_migration_ssl"></a> [migration\_ssl](#input\_migration\_ssl) | The server where to migrate data from is secured with SSL. | `string` | `""` | no |
| <a name="input_migration_username"></a> [migration\_username](#input\_migration\_username) | User name for authentication with the server where to migrate data. | `string` | `""` | no |
| <a name="input_mysql_version"></a> [mysql\_version](#input\_mysql\_version) | MySQL major version. | `string` | `"8"` | no |
| <a name="input_net_buffer_length"></a> [net\_buffer\_length](#input\_net\_buffer\_length) | net\_buffer\_length | `string` | `""` | no |
| <a name="input_net_read_timeout"></a> [net\_read\_timeout](#input\_net\_read\_timeout) | net\_read\_timeout | `string` | `""` | no |
| <a name="input_net_write_timeout"></a> [net\_write\_timeout](#input\_net\_write\_timeout) | net\_write\_timeout | `string` | `""` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"startup-4"` | no |
| <a name="input_private_access_mysql"></a> [private\_access\_mysql](#input\_private\_access\_mysql) | Allow clients to connect to mysql with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_private_access_mysqlx"></a> [private\_access\_mysqlx](#input\_private\_access\_mysqlx) | Allow clients to connect to mysqlx with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_private_access_prometheus"></a> [private\_access\_prometheus](#input\_private\_access\_prometheus) | Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses. | `bool` | `false` | no |
| <a name="input_privatelink_mysql"></a> [privatelink\_mysql](#input\_privatelink\_mysql) | Enable mysql. | `bool` | `false` | no |
| <a name="input_privatelink_mysqlx"></a> [privatelink\_mysqlx](#input\_privatelink\_mysqlx) | Enable mysqlx. | `bool` | `false` | no |
| <a name="input_privatelink_prometheus"></a> [privatelink\_prometheus](#input\_privatelink\_prometheus) | Enable prometheus. | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_to_fork_from"></a> [project\_to\_fork\_from](#input\_project\_to\_fork\_from) | Name of another project to fork a service from. | `string` | `""` | no |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_public_access_mysql"></a> [public\_access\_mysql](#input\_public\_access\_mysql) | Allow clients to connect to mysql from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_mysqlx"></a> [public\_access\_mysqlx](#input\_public\_access\_mysqlx) | Allow clients to connect to mysqlx from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_prometheus"></a> [public\_access\_prometheus](#input\_public\_access\_prometheus) | Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_recovery_target_time"></a> [recovery\_target\_time](#input\_recovery\_target\_time) | Recovery target time when forking a service. | `string` | `""` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_service_to_fork_from"></a> [service\_to\_fork\_from](#input\_service\_to\_fork\_from) | Name of another service to fork from. | `string` | `""` | no |
| <a name="input_slow_query_log"></a> [slow\_query\_log](#input\_slow\_query\_log) | slow\_query\_log | `string` | `""` | no |
| <a name="input_sort_buffer_size"></a> [sort\_buffer\_size](#input\_sort\_buffer\_size) | sort\_buffer\_size | `string` | `""` | no |
| <a name="input_sql_mode"></a> [sql\_mode](#input\_sql\_mode) | sql\_mode | `string` | `""` | no |
| <a name="input_sql_require_primary_key"></a> [sql\_require\_primary\_key](#input\_sql\_require\_primary\_key) | sql\_require\_primary\_key | `string` | `""` | no |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |
| <a name="input_tmp_table_size"></a> [tmp\_table\_size](#input\_tmp\_table\_size) | tmp\_table\_size | `string` | `""` | no |
| <a name="input_wait_timeout"></a> [wait\_timeout](#input\_wait\_timeout) | wait\_timeout | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space_cap"></a> [disk\_space\_cap](#output\_disk\_space\_cap) | The maximum disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_default"></a> [disk\_space\_default](#output\_disk\_space\_default) | The default disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_step"></a> [disk\_space\_step](#output\_disk\_space\_step) | The default disk space step of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
| <a name="output_maintenance_window_time"></a> [maintenance\_window\_time](#output\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. |
| <a name="output_mysql_user_config"></a> [mysql\_user\_config](#output\_mysql\_user\_config) | MySQL user configurable settings. |
| <a name="output_plan"></a> [plan](#output\_plan) | Defines what kind of computing resources are allocated for the service. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_host"></a> [service\_host](#output\_service\_host) | The hostname of the service. |
| <a name="output_service_integrations"></a> [service\_integrations](#output\_service\_integrations) | Service integrations to specify when creating a service. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
| <a name="output_service_password"></a> [service\_password](#output\_service\_password) | Password used for connecting to the service, if applicable. |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | The port of the service. |
| <a name="output_service_type"></a> [service\_type](#output\_service\_type) | Aiven internal service type code. |
| <a name="output_service_uri"></a> [service\_uri](#output\_service\_uri) | URI for connecting to the service. |
| <a name="output_service_username"></a> [service\_username](#output\_service\_username) | Username used for connecting to the service. |
| <a name="output_static_ips"></a> [static\_ips](#output\_static\_ips) | Static IPs that are going to be associated with this service. |
<!-- END_TF_DOCS -->