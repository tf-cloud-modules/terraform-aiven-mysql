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
  type        = string
  default     = ""
}

variable "ip_filter" {
  description = "IP filter."
  type        = list(string)
  default     = ["0.0.0.0/0"]
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

variable "migration_dbname" {
  description = "Database name for bootstrapping the initial connection."
  type        = string
  default     = ""
}

variable "migration_host" {
  description = "Hostname or IP address of the server where to migrate data from."
  type        = string
  default     = ""
}

variable "migration_ignore_dbs" {
  description = "Comma-separated list of databases, which should be ignored during migration."
  type        = string
  default     = ""
}

variable "migration_method" {
  description = "The migration method to be used."
  type        = string
  default     = ""
}

variable "migration_password" {
  description = "Password for authentication with the server where to migrate data from."
  sensitive   = true
  type        = string
  default     = ""
}

variable "migration_port" {
  description = "Port number of the server where to migrate data from."
  type        = string
  default     = ""
}

variable "migration_ssl" {
  description = "The server where to migrate data from is secured with SSL."
  type        = string
  default     = ""
}

variable "migration_username" {
  description = "User name for authentication with the server where to migrate data."
  type        = string
  default     = ""
}