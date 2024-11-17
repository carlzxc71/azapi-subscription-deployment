variable "environment" {
  type        = string
  description = "The environment to deploy to"
}

variable "location" {
  type        = string
  description = "The Azure region to deploy to"
  default     = "swedencentral"
}

variable "location_short" {
  type        = string
  description = "The Azure region to deploy to"
  default     = "sc"
}
