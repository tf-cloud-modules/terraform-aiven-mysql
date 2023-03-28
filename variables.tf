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

variable "innodb_ft_min_token_size" {
  description = "innodb_ft_min_token_size"
  type        = number
  default     = null
}

variable "innodb_ft_server_stopword_table" {
  description = "innodb_ft_server_stopword_table"
  type        = string
  default     = ""
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

variable "innodb_online_alter_log_max_size" {
  description = "innodb_online_alter_log_max_size"
  type        = number
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

variable "long_query_time" {
  description = "long_query_time"
  type        = number
  default     = null
}

variable "max_allowed_packet" {
  description = "max_allowed_packet"
  type        = number
  default     = null
}

variable "max_heap_table_size" {
  description = "max_heap_table_size"
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
  default     = [
    {
      network ="0.0.0.0/0"
    }
  ]
}