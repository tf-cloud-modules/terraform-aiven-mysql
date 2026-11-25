variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "cloud_name" {
  description = "Defines where the cloud provider and region where the service is hosted in."
  type        = string
  default     = "aws-us-east-1"
}

variable "maintenance_window_dow" {
  description = "Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc."
  type        = string
  default     = "thursday"
}

variable "maintenance_window_time" {
  description = "Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format."
  type        = string
  default     = "01:00:00"
}

variable "plan" {
  description = "Defines what kind of computing resources are allocated for the service."
  type        = string
  default     = "startup-4"
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  type        = string
  default     = null
}

variable "cmk_id" {
  description = "UUID of the Customer Managed Key (CMK) used to apply bring your own key (BYOK) encryption to this service's data at rest."
  type        = string
  default     = null
}

variable "static_ips" {
  description = "Static IPs that are going to be associated with this service."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "tags" {
  description = "List of the service tags."
  type        = list(any)
  default     = []
}

variable "tech_emails" {
  description = "The email addresses for service contacts, who will receive important alerts and updates about this service."
  type        = list(any)
  default     = []
}

variable "termination_protection" {
  description = "Prevents the service from being deleted."
  type        = bool
  default     = false
}

variable "binlog_retention_period" {
  description = "The minimum amount of time in seconds to keep binlog entries before deletion."
  type        = number
  default     = null
}

variable "service_log" {
  description = "Store logs for the service so that they are available in the HTTP API and console."
  type        = bool
  default     = null
}

variable "mysql_version" {
  description = "MySQL major version."
  type        = string
  default     = "8"
}

variable "project_to_fork_from" {
  description = "Name of another project to fork a service from."
  type        = string
  default     = ""
}

variable "recovery_target_time" {
  description = "Recovery target time when forking a service."
  type        = string
  default     = ""
}

variable "service_to_fork_from" {
  description = "Name of another service to fork from."
  type        = string
  default     = ""
}

variable "mysql_incremental_backup" {
  description = "MySQL incremental backup configuration."
  type        = list(any)
  default     = []
}

variable "public_access_prometheus" {
  description = "Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_mysql" {
  description = "Allow clients to connect to mysql from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_mysqlx" {
  description = "Allow clients to connect to mysqlx from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "private_access_prometheus" {
  description = "Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses."
  type        = bool
  default     = false
}

variable "private_access_mysql" {
  description = "Allow clients to connect to mysql with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "private_access_mysqlx" {
  description = "Allow clients to connect to mysqlx with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "privatelink_prometheus" {
  description = "Enable prometheus."
  type        = bool
  default     = false
}

variable "privatelink_mysql" {
  description = "Enable mysql."
  type        = bool
  default     = false
}

variable "privatelink_mysqlx" {
  description = "Enable mysqlx."
  type        = bool
  default     = false
}

variable "automatic_sp_privileges" {
  description = "When enabled, the server automatically grants the EXECUTE and ALTER ROUTINE privileges to the creator of a stored routine and drops them when the routine is dropped."
  type        = bool
  default     = null
}

variable "collation_server" {
  description = "The default collation for databases created without one, which their new tables then inherit. Only collations of the utf8mb4 character set are accepted."
  type        = string
  default     = ""
}

variable "connect_timeout" {
  description = "connect_timeout"
  type        = number
  default     = null
}

variable "default_time_zone" {
  description = "default_time_zone"
  type        = string
  default     = ""
}

variable "div_precision_increment" {
  description = "Number of digits by which to increase the scale of the result of division operations performed with the / operator."
  type        = number
  default     = null
}

variable "end_markers_in_json" {
  description = "Whether optimizer JSON output such as EXPLAIN FORMAT=JSON adds end markers that repeat a structure's key near its closing bracket, making large JSON structures easier to read."
  type        = bool
  default     = null
}

variable "eq_range_index_dive_limit" {
  description = "The number of equality ranges in a query at or above which the optimizer switches from index dives to index statistics when estimating the number of qualifying rows. 0 means always use index dives."
  type        = number
  default     = null
}

variable "event_scheduler" {
  description = "Whether the event scheduler runs the events created with CREATE EVENT. Enum: `OFF`, `ON`."
  type        = string
  default     = ""
}

variable "group_concat_max_len" {
  description = "group_concat_max_len"
  type        = number
  default     = null
}

variable "information_schema_stats_expiry" {
  description = "information_schema_stats_expiry"
  type        = number
  default     = null
}

variable "innodb_adaptive_hash_index" {
  description = "Whether InnoDB adaptive hash indexing is enabled."
  type        = bool
  default     = null
}

variable "innodb_change_buffer_max_size" {
  description = "innodb_change_buffer_max_size"
  type        = number
  default     = null
}

variable "innodb_flush_neighbors" {
  description = "innodb_flush_neighbors"
  type        = number
  default     = null
}

variable "innodb_ft_cache_size" {
  description = "The size in bytes of the InnoDB FULLTEXT index cache for each table. Changing this parameter will lead to a restart of the MySQL service."
  type        = number
  default     = null
}

variable "innodb_ft_enable_stopword" {
  description = "Whether stopword processing is applied when creating or rebuilding an InnoDB FULLTEXT index."
  type        = bool
  default     = null
}

variable "innodb_ft_max_token_size" {
  description = "Maximum length of words that are stored in an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service."
  type        = number
  default     = null
}

variable "innodb_ft_min_token_size" {
  description = "innodb_ft_min_token_size"
  type        = number
  default     = null
}

variable "innodb_ft_num_word_optimize" {
  description = "Number of words processed during each OPTIMIZE TABLE operation on an InnoDB FULLTEXT index."
  type        = number
  default     = null
}

variable "innodb_ft_result_cache_limit" {
  description = "Maximum memory in bytes used per query for the InnoDB FULLTEXT search query result cache."
  type        = number
  default     = null
}

variable "innodb_ft_server_stopword_table" {
  description = "innodb_ft_server_stopword_table"
  type        = string
  default     = ""
}

variable "innodb_ft_sort_pll_degree" {
  description = "The number of parallel threads used to tokenize and index text when building an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service."
  type        = number
  default     = null
}

variable "innodb_ft_total_cache_size" {
  description = "The combined memory limit in bytes for InnoDB FULLTEXT index caches across all tables. Changing this parameter will lead to a restart of the MySQL service."
  type        = number
  default     = null
}

variable "innodb_ft_user_stopword_table" {
  description = "This option is used to specify your own InnoDB FULLTEXT index stopword list for specific InnoDB tables."
  type        = string
  default     = ""
}

variable "innodb_io_capacity" {
  description = "The number of I/O operations per second (IOPS) available to InnoDB background tasks, such as flushing pages from the buffer pool and merging data from the change buffer."
  type        = number
  default     = null
}

variable "innodb_io_capacity_max" {
  description = "The maximum number of I/O operations per second (IOPS) that InnoDB background tasks may perform when flushing falls behind."
  type        = number
  default     = null
}

variable "innodb_lock_wait_timeout" {
  description = "innodb_lock_wait_timeout"
  type        = string
  default     = null
}

variable "innodb_log_buffer_size" {
  description = "innodb_log_buffer_size"
  type        = number
  default     = null
}

variable "innodb_max_dirty_pages_pct" {
  description = "Percentage of dirty pages in the InnoDB buffer pool at which InnoDB starts flushing aggressively."
  type        = number
  default     = null
}

variable "innodb_max_dirty_pages_pct_lwm" {
  description = "Percentage of dirty pages in the InnoDB buffer pool at which InnoDB starts pre-flushing, to keep the dirty page ratio from reaching innodb_max_dirty_pages_pct."
  type        = number
  default     = null
}

variable "innodb_max_purge_lag" {
  description = "Number of outstanding transactions the InnoDB purge operation may fall behind by before INSERT, UPDATE and DELETE are delayed to let it catch up."
  type        = number
  default     = null
}

variable "innodb_max_purge_lag_delay" {
  description = "Cap in microseconds on the per-row delay innodb_max_purge_lag applies to INSERT, UPDATE and DELETE."
  type        = number
  default     = null
}

variable "innodb_online_alter_log_max_size" {
  description = "innodb_online_alter_log_max_size"
  type        = number
  default     = null
}

variable "innodb_optimize_fulltext_only" {
  description = "When enabled, OPTIMIZE TABLE on InnoDB tables only updates the FULLTEXT index instead of rebuilding the table."
  type        = bool
  default     = null
}

variable "innodb_print_all_deadlocks" {
  description = "innodb_print_all_deadlocks"
  type        = bool
  default     = null
}

variable "innodb_read_io_threads" {
  description = "innodb_read_io_threads"
  type        = number
  default     = null
}

variable "innodb_rollback_on_timeout" {
  description = "innodb_rollback_on_timeout"
  type        = bool
  default     = null
}

variable "innodb_sort_buffer_size" {
  description = "The size in bytes of the sort buffer used when creating InnoDB indexes. Changing this parameter will lead to a restart of the MySQL service."
  type        = number
  default     = null
}

variable "innodb_thread_concurrency" {
  description = "innodb_thread_concurrency"
  type        = number
  default     = null
}

variable "innodb_write_io_threads" {
  description = "innodb_write_io_threads"
  type        = number
  default     = null
}

variable "interactive_timeout" {
  description = "interactive_timeout"
  type        = number
  default     = null
}

variable "internal_tmp_mem_storage_engine" {
  description = "internal_tmp_mem_storage_engine"
  type        = string
  default     = ""
}

variable "log_output" {
  description = "The slow log output destination when slow_query_log is ON. Enum: `INSIGHTS`, `INSIGHTS,TABLE`, `NONE`, `TABLE`."
  type        = string
  default     = ""
}

variable "long_query_time" {
  description = "long_query_time"
  type        = number
  default     = null
}

variable "lower_case_table_names" {
  description = "Sets how table and database names are stored and compared. 0 = case-sensitive (default), 1 = names stored lowercase, comparisons are case-insensitive. Can only be set when creating the service."
  type        = number
  default     = null
}

variable "max_allowed_packet" {
  description = "max_allowed_packet"
  type        = number
  default     = null
}

variable "max_connections" {
  description = "The maximum permitted number of simultaneous client connections."
  type        = number
  default     = null
}

variable "max_execution_time" {
  description = "Execution timeout in milliseconds for read-only top-level SELECT statements. 0 means no timeout."
  type        = number
  default     = null
}

variable "max_heap_table_size" {
  description = "max_heap_table_size"
  type        = number
  default     = null
}

variable "max_seeks_for_key" {
  description = "Limit on the assumed maximum number of index seeks when looking up rows based on a key."
  type        = number
  default     = null
}

variable "max_user_connections" {
  description = "The maximum number of simultaneous connections permitted to any single user account. 0 means no per-account limit."
  type        = number
  default     = null
}

variable "net_buffer_length" {
  description = "net_buffer_length"
  type        = number
  default     = null
}

variable "net_read_timeout" {
  description = "net_read_timeout"
  type        = number
  default     = null
}

variable "net_write_timeout" {
  description = "net_write_timeout"
  type        = number
  default     = null
}

variable "optimizer_prune_level" {
  description = "Controls the heuristics applied during query optimization to prune less-promising partial plans from the optimizer search space."
  type        = number
  default     = null
}

variable "optimizer_search_depth" {
  description = "Maximum depth of search performed by the query optimizer when choosing a join order. 0 lets the optimizer choose the depth automatically."
  type        = number
  default     = null
}

variable "optimizer_switch" {
  description = "Comma-separated list of optimizer flag assignments in the form flag=on|off|default, or the single value `default` to reset all flags."
  type        = string
  default     = ""
}

variable "performance_schema_events_statements_history_size" {
  description = "The number of rows per thread in the events_statements_history table. Changing this parameter will lead to a restart of the MySQL service."
  type        = number
  default     = null
}

variable "relay_log_space_limit" {
  description = "The maximum amount of space in bytes to use for all relay logs while replicating from an external migration source. Changing this parameter will lead to a restart of the MySQL service."
  type        = number
  default     = null
}

variable "schema_definition_cache" {
  description = "The number of schema definition objects the data dictionary object cache can hold."
  type        = number
  default     = null
}

variable "slow_query_log" {
  description = "slow_query_log"
  type        = bool
  default     = null
}

variable "sort_buffer_size" {
  description = "sort_buffer_size"
  type        = number
  default     = null
}

variable "sql_mode" {
  description = "sql_mode"
  type        = string
  default     = ""
}

variable "sql_require_primary_key" {
  description = "sql_require_primary_key"
  type        = bool
  default     = null
}

variable "tablespace_definition_cache" {
  description = "The number of tablespace definition objects the data dictionary object cache can hold."
  type        = number
  default     = null
}

variable "tmp_table_size" {
  description = "tmp_table_size"
  type        = number
  default     = null
}

variable "wait_timeout" {
  description = "wait_timeout"
  type        = number
  default     = null
}

variable "windowing_use_high_precision" {
  description = "Whether window functions are computed to high precision."
  type        = bool
  default     = null
}

variable "service_integrations" {
  description = "Service integrations to specify when creating a service."
  type        = list(any)
  default     = []
}

variable "migration" {
  description = "Migrate data from existing server."
  type        = list(any)
  default     = []
}

variable "ip_filter_object" {
  description = "Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'."
  type        = list(any)
  default = [
    {
      network = "0.0.0.0/0"
    }
  ]
}

variable "ip_filter_string" {
  description = "Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'."
  type        = list(string)
  default     = null
}
