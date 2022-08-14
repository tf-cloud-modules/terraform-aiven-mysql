variable "project" {
  description = "Aiven Cloud Project Name."
  type        = string
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "database_name" {
  description = "The name of the service database."
  type        = string
}

variable "username" {
  description = "The actual name of the PG User."
  type        = string
}