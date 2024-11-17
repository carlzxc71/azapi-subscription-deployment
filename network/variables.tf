variable "environment" {
  type        = string
  description = "The environment to deploy to"
}

variable "location_short" {
  type        = string
  description = "The Azure region to deploy to"
  default     = "sc"
}
