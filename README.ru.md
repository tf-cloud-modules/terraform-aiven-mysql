[English](README.md) | **Русский**

# Aiven MySQL Terraform module

Terraform-модуль для создания ресурсов Aiven MySQL.

## Использование

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
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 4.66.0, < 5.0.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 4.66.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aiven_mysql.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/mysql) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_automatic_sp_privileges"></a> [automatic\_sp\_privileges](#input\_automatic\_sp\_privileges) | When enabled, the server automatically grants the EXECUTE and ALTER ROUTINE privileges to the creator of a stored routine and drops them when the routine is dropped. | `bool` | `null` | no |
| <a name="input_binlog_retention_period"></a> [binlog\_retention\_period](#input\_binlog\_retention\_period) | The minimum amount of time in seconds to keep binlog entries before deletion. | `number` | `null` | no |
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_cmk_id"></a> [cmk\_id](#input\_cmk\_id) | UUID of the Customer Managed Key (CMK) used to apply bring your own key (BYOK) encryption to this service's data at rest. | `string` | `null` | no |
| <a name="input_collation_server"></a> [collation\_server](#input\_collation\_server) | The default collation for databases created without one, which their new tables then inherit. Only collations of the utf8mb4 character set are accepted. | `string` | `""` | no |
| <a name="input_connect_timeout"></a> [connect\_timeout](#input\_connect\_timeout) | connect\_timeout | `number` | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_default_time_zone"></a> [default\_time\_zone](#input\_default\_time\_zone) | default\_time\_zone | `string` | `""` | no |
| <a name="input_div_precision_increment"></a> [div\_precision\_increment](#input\_div\_precision\_increment) | Number of digits by which to increase the scale of the result of division operations performed with the / operator. | `number` | `null` | no |
| <a name="input_end_markers_in_json"></a> [end\_markers\_in\_json](#input\_end\_markers\_in\_json) | Whether optimizer JSON output such as EXPLAIN FORMAT=JSON adds end markers that repeat a structure's key near its closing bracket, making large JSON structures easier to read. | `bool` | `null` | no |
| <a name="input_eq_range_index_dive_limit"></a> [eq\_range\_index\_dive\_limit](#input\_eq\_range\_index\_dive\_limit) | The number of equality ranges in a query at or above which the optimizer switches from index dives to index statistics when estimating the number of qualifying rows. 0 means always use index dives. | `number` | `null` | no |
| <a name="input_event_scheduler"></a> [event\_scheduler](#input\_event\_scheduler) | Whether the event scheduler runs the events created with CREATE EVENT. Enum: `OFF`, `ON`. | `string` | `""` | no |
| <a name="input_group_concat_max_len"></a> [group\_concat\_max\_len](#input\_group\_concat\_max\_len) | group\_concat\_max\_len | `number` | `null` | no |
| <a name="input_information_schema_stats_expiry"></a> [information\_schema\_stats\_expiry](#input\_information\_schema\_stats\_expiry) | information\_schema\_stats\_expiry | `number` | `null` | no |
| <a name="input_innodb_adaptive_hash_index"></a> [innodb\_adaptive\_hash\_index](#input\_innodb\_adaptive\_hash\_index) | Whether InnoDB adaptive hash indexing is enabled. | `bool` | `null` | no |
| <a name="input_innodb_change_buffer_max_size"></a> [innodb\_change\_buffer\_max\_size](#input\_innodb\_change\_buffer\_max\_size) | innodb\_change\_buffer\_max\_size | `number` | `null` | no |
| <a name="input_innodb_flush_neighbors"></a> [innodb\_flush\_neighbors](#input\_innodb\_flush\_neighbors) | innodb\_flush\_neighbors | `number` | `null` | no |
| <a name="input_innodb_ft_cache_size"></a> [innodb\_ft\_cache\_size](#input\_innodb\_ft\_cache\_size) | The size in bytes of the InnoDB FULLTEXT index cache for each table. Changing this parameter will lead to a restart of the MySQL service. | `number` | `null` | no |
| <a name="input_innodb_ft_enable_stopword"></a> [innodb\_ft\_enable\_stopword](#input\_innodb\_ft\_enable\_stopword) | Whether stopword processing is applied when creating or rebuilding an InnoDB FULLTEXT index. | `bool` | `null` | no |
| <a name="input_innodb_ft_max_token_size"></a> [innodb\_ft\_max\_token\_size](#input\_innodb\_ft\_max\_token\_size) | Maximum length of words that are stored in an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service. | `number` | `null` | no |
| <a name="input_innodb_ft_min_token_size"></a> [innodb\_ft\_min\_token\_size](#input\_innodb\_ft\_min\_token\_size) | innodb\_ft\_min\_token\_size | `number` | `null` | no |
| <a name="input_innodb_ft_num_word_optimize"></a> [innodb\_ft\_num\_word\_optimize](#input\_innodb\_ft\_num\_word\_optimize) | Number of words processed during each OPTIMIZE TABLE operation on an InnoDB FULLTEXT index. | `number` | `null` | no |
| <a name="input_innodb_ft_result_cache_limit"></a> [innodb\_ft\_result\_cache\_limit](#input\_innodb\_ft\_result\_cache\_limit) | Maximum memory in bytes used per query for the InnoDB FULLTEXT search query result cache. | `number` | `null` | no |
| <a name="input_innodb_ft_server_stopword_table"></a> [innodb\_ft\_server\_stopword\_table](#input\_innodb\_ft\_server\_stopword\_table) | innodb\_ft\_server\_stopword\_table | `string` | `""` | no |
| <a name="input_innodb_ft_sort_pll_degree"></a> [innodb\_ft\_sort\_pll\_degree](#input\_innodb\_ft\_sort\_pll\_degree) | The number of parallel threads used to tokenize and index text when building an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service. | `number` | `null` | no |
| <a name="input_innodb_ft_total_cache_size"></a> [innodb\_ft\_total\_cache\_size](#input\_innodb\_ft\_total\_cache\_size) | The combined memory limit in bytes for InnoDB FULLTEXT index caches across all tables. Changing this parameter will lead to a restart of the MySQL service. | `number` | `null` | no |
| <a name="input_innodb_ft_user_stopword_table"></a> [innodb\_ft\_user\_stopword\_table](#input\_innodb\_ft\_user\_stopword\_table) | This option is used to specify your own InnoDB FULLTEXT index stopword list for specific InnoDB tables. | `string` | `""` | no |
| <a name="input_innodb_io_capacity"></a> [innodb\_io\_capacity](#input\_innodb\_io\_capacity) | The number of I/O operations per second (IOPS) available to InnoDB background tasks, such as flushing pages from the buffer pool and merging data from the change buffer. | `number` | `null` | no |
| <a name="input_innodb_io_capacity_max"></a> [innodb\_io\_capacity\_max](#input\_innodb\_io\_capacity\_max) | The maximum number of I/O operations per second (IOPS) that InnoDB background tasks may perform when flushing falls behind. | `number` | `null` | no |
| <a name="input_innodb_lock_wait_timeout"></a> [innodb\_lock\_wait\_timeout](#input\_innodb\_lock\_wait\_timeout) | innodb\_lock\_wait\_timeout | `string` | `null` | no |
| <a name="input_innodb_log_buffer_size"></a> [innodb\_log\_buffer\_size](#input\_innodb\_log\_buffer\_size) | innodb\_log\_buffer\_size | `number` | `null` | no |
| <a name="input_innodb_max_dirty_pages_pct"></a> [innodb\_max\_dirty\_pages\_pct](#input\_innodb\_max\_dirty\_pages\_pct) | Percentage of dirty pages in the InnoDB buffer pool at which InnoDB starts flushing aggressively. | `number` | `null` | no |
| <a name="input_innodb_max_dirty_pages_pct_lwm"></a> [innodb\_max\_dirty\_pages\_pct\_lwm](#input\_innodb\_max\_dirty\_pages\_pct\_lwm) | Percentage of dirty pages in the InnoDB buffer pool at which InnoDB starts pre-flushing, to keep the dirty page ratio from reaching innodb\_max\_dirty\_pages\_pct. | `number` | `null` | no |
| <a name="input_innodb_max_purge_lag"></a> [innodb\_max\_purge\_lag](#input\_innodb\_max\_purge\_lag) | Number of outstanding transactions the InnoDB purge operation may fall behind by before INSERT, UPDATE and DELETE are delayed to let it catch up. | `number` | `null` | no |
| <a name="input_innodb_max_purge_lag_delay"></a> [innodb\_max\_purge\_lag\_delay](#input\_innodb\_max\_purge\_lag\_delay) | Cap in microseconds on the per-row delay innodb\_max\_purge\_lag applies to INSERT, UPDATE and DELETE. | `number` | `null` | no |
| <a name="input_innodb_online_alter_log_max_size"></a> [innodb\_online\_alter\_log\_max\_size](#input\_innodb\_online\_alter\_log\_max\_size) | innodb\_online\_alter\_log\_max\_size | `number` | `null` | no |
| <a name="input_innodb_optimize_fulltext_only"></a> [innodb\_optimize\_fulltext\_only](#input\_innodb\_optimize\_fulltext\_only) | When enabled, OPTIMIZE TABLE on InnoDB tables only updates the FULLTEXT index instead of rebuilding the table. | `bool` | `null` | no |
| <a name="input_innodb_print_all_deadlocks"></a> [innodb\_print\_all\_deadlocks](#input\_innodb\_print\_all\_deadlocks) | innodb\_print\_all\_deadlocks | `bool` | `null` | no |
| <a name="input_innodb_read_io_threads"></a> [innodb\_read\_io\_threads](#input\_innodb\_read\_io\_threads) | innodb\_read\_io\_threads | `number` | `null` | no |
| <a name="input_innodb_rollback_on_timeout"></a> [innodb\_rollback\_on\_timeout](#input\_innodb\_rollback\_on\_timeout) | innodb\_rollback\_on\_timeout | `bool` | `null` | no |
| <a name="input_innodb_sort_buffer_size"></a> [innodb\_sort\_buffer\_size](#input\_innodb\_sort\_buffer\_size) | The size in bytes of the sort buffer used when creating InnoDB indexes. Changing this parameter will lead to a restart of the MySQL service. | `number` | `null` | no |
| <a name="input_innodb_thread_concurrency"></a> [innodb\_thread\_concurrency](#input\_innodb\_thread\_concurrency) | innodb\_thread\_concurrency | `number` | `null` | no |
| <a name="input_innodb_write_io_threads"></a> [innodb\_write\_io\_threads](#input\_innodb\_write\_io\_threads) | innodb\_write\_io\_threads | `number` | `null` | no |
| <a name="input_interactive_timeout"></a> [interactive\_timeout](#input\_interactive\_timeout) | interactive\_timeout | `number` | `null` | no |
| <a name="input_internal_tmp_mem_storage_engine"></a> [internal\_tmp\_mem\_storage\_engine](#input\_internal\_tmp\_mem\_storage\_engine) | internal\_tmp\_mem\_storage\_engine | `string` | `""` | no |
| <a name="input_ip_filter_object"></a> [ip\_filter\_object](#input\_ip\_filter\_object) | Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'. | `list(any)` | <pre>[<br/>  {<br/>    "network": "0.0.0.0/0"<br/>  }<br/>]</pre> | no |
| <a name="input_ip_filter_string"></a> [ip\_filter\_string](#input\_ip\_filter\_string) | Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'. | `list(string)` | `null` | no |
| <a name="input_log_output"></a> [log\_output](#input\_log\_output) | The slow log output destination when slow\_query\_log is ON. Enum: `INSIGHTS`, `INSIGHTS,TABLE`, `NONE`, `TABLE`. | `string` | `""` | no |
| <a name="input_long_query_time"></a> [long\_query\_time](#input\_long\_query\_time) | long\_query\_time | `number` | `null` | no |
| <a name="input_lower_case_table_names"></a> [lower\_case\_table\_names](#input\_lower\_case\_table\_names) | Sets how table and database names are stored and compared. 0 = case-sensitive (default), 1 = names stored lowercase, comparisons are case-insensitive. Can only be set when creating the service. | `number` | `null` | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_max_allowed_packet"></a> [max\_allowed\_packet](#input\_max\_allowed\_packet) | max\_allowed\_packet | `number` | `null` | no |
| <a name="input_max_connections"></a> [max\_connections](#input\_max\_connections) | The maximum permitted number of simultaneous client connections. | `number` | `null` | no |
| <a name="input_max_execution_time"></a> [max\_execution\_time](#input\_max\_execution\_time) | Execution timeout in milliseconds for read-only top-level SELECT statements. 0 means no timeout. | `number` | `null` | no |
| <a name="input_max_heap_table_size"></a> [max\_heap\_table\_size](#input\_max\_heap\_table\_size) | max\_heap\_table\_size | `number` | `null` | no |
| <a name="input_max_seeks_for_key"></a> [max\_seeks\_for\_key](#input\_max\_seeks\_for\_key) | Limit on the assumed maximum number of index seeks when looking up rows based on a key. | `number` | `null` | no |
| <a name="input_max_user_connections"></a> [max\_user\_connections](#input\_max\_user\_connections) | The maximum number of simultaneous connections permitted to any single user account. 0 means no per-account limit. | `number` | `null` | no |
| <a name="input_migration"></a> [migration](#input\_migration) | Migrate data from existing server. | `list(any)` | `[]` | no |
| <a name="input_mysql_incremental_backup"></a> [mysql\_incremental\_backup](#input\_mysql\_incremental\_backup) | MySQL incremental backup configuration. | `list(any)` | `[]` | no |
| <a name="input_mysql_version"></a> [mysql\_version](#input\_mysql\_version) | MySQL major version. | `string` | `"8"` | no |
| <a name="input_net_buffer_length"></a> [net\_buffer\_length](#input\_net\_buffer\_length) | net\_buffer\_length | `number` | `null` | no |
| <a name="input_net_read_timeout"></a> [net\_read\_timeout](#input\_net\_read\_timeout) | net\_read\_timeout | `number` | `null` | no |
| <a name="input_net_write_timeout"></a> [net\_write\_timeout](#input\_net\_write\_timeout) | net\_write\_timeout | `number` | `null` | no |
| <a name="input_optimizer_prune_level"></a> [optimizer\_prune\_level](#input\_optimizer\_prune\_level) | Controls the heuristics applied during query optimization to prune less-promising partial plans from the optimizer search space. | `number` | `null` | no |
| <a name="input_optimizer_search_depth"></a> [optimizer\_search\_depth](#input\_optimizer\_search\_depth) | Maximum depth of search performed by the query optimizer when choosing a join order. 0 lets the optimizer choose the depth automatically. | `number` | `null` | no |
| <a name="input_optimizer_switch"></a> [optimizer\_switch](#input\_optimizer\_switch) | Comma-separated list of optimizer flag assignments in the form flag=on\|off\|default, or the single value `default` to reset all flags. | `string` | `""` | no |
| <a name="input_performance_schema_events_statements_history_size"></a> [performance\_schema\_events\_statements\_history\_size](#input\_performance\_schema\_events\_statements\_history\_size) | The number of rows per thread in the events\_statements\_history table. Changing this parameter will lead to a restart of the MySQL service. | `number` | `null` | no |
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
| <a name="input_relay_log_space_limit"></a> [relay\_log\_space\_limit](#input\_relay\_log\_space\_limit) | The maximum amount of space in bytes to use for all relay logs while replicating from an external migration source. Changing this parameter will lead to a restart of the MySQL service. | `number` | `null` | no |
| <a name="input_schema_definition_cache"></a> [schema\_definition\_cache](#input\_schema\_definition\_cache) | The number of schema definition objects the data dictionary object cache can hold. | `number` | `null` | no |
| <a name="input_service_integrations"></a> [service\_integrations](#input\_service\_integrations) | Service integrations to specify when creating a service. | `list(any)` | `[]` | no |
| <a name="input_service_log"></a> [service\_log](#input\_service\_log) | Store logs for the service so that they are available in the HTTP API and console. | `bool` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_service_to_fork_from"></a> [service\_to\_fork\_from](#input\_service\_to\_fork\_from) | Name of another service to fork from. | `string` | `""` | no |
| <a name="input_slow_query_log"></a> [slow\_query\_log](#input\_slow\_query\_log) | slow\_query\_log | `bool` | `null` | no |
| <a name="input_sort_buffer_size"></a> [sort\_buffer\_size](#input\_sort\_buffer\_size) | sort\_buffer\_size | `number` | `null` | no |
| <a name="input_sql_mode"></a> [sql\_mode](#input\_sql\_mode) | sql\_mode | `string` | `""` | no |
| <a name="input_sql_require_primary_key"></a> [sql\_require\_primary\_key](#input\_sql\_require\_primary\_key) | sql\_require\_primary\_key | `bool` | `null` | no |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_tablespace_definition_cache"></a> [tablespace\_definition\_cache](#input\_tablespace\_definition\_cache) | The number of tablespace definition objects the data dictionary object cache can hold. | `number` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_tech_emails"></a> [tech\_emails](#input\_tech\_emails) | The email addresses for service contacts, who will receive important alerts and updates about this service. | `list(any)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |
| <a name="input_tmp_table_size"></a> [tmp\_table\_size](#input\_tmp\_table\_size) | tmp\_table\_size | `number` | `null` | no |
| <a name="input_wait_timeout"></a> [wait\_timeout](#input\_wait\_timeout) | wait\_timeout | `number` | `null` | no |
| <a name="input_windowing_use_high_precision"></a> [windowing\_use\_high\_precision](#input\_windowing\_use\_high\_precision) | Whether window functions are computed to high precision. | `bool` | `null` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space_cap"></a> [disk\_space\_cap](#output\_disk\_space\_cap) | The maximum disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_default"></a> [disk\_space\_default](#output\_disk\_space\_default) | The default disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_step"></a> [disk\_space\_step](#output\_disk\_space\_step) | The default disk space step of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
| <a name="output_maintenance_window_enabled"></a> [maintenance\_window\_enabled](#output\_maintenance\_window\_enabled) | Indicates whether the maintenance window is currently enabled for this service. |
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
