variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "project" {
  description = "Aiven Cloud Project Name."
  type        = string
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "username" {
  description = "The actual name of the PG User."
  type        = string
}

variable "authentication" {
  description = "Authentication details."
  type        = string
  default     = "caching_sha2_password"
}

variable "mysql_grants" {
  description = "MySQL grants for the service user. Changing this property forces recreation of the resource."
  type        = list(string)
  default     = null
}