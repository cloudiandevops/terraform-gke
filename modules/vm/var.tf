variable "name" {
  description = "Name of the instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type"
  type        = string
}

variable "image" {
  description = "Disk image"
  type        = string
}

variable "network" {
  description = "Network for the instance"
  type        = string
}

variable "tags" {
  description = "Tags for the instance"
  type        = list(string)
  default     = []
}

variable "service_account_email" {
  description = "Service account email"
  type        = string
}

variable "service_account_scopes" {
  description = "Service account scopes"
  type        = list(string)
  default     = ["cloud-platform"]
}
