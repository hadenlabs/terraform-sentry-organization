variable "name" {
  type        = string
  description = "The name of the organization."
}

variable "slug" {
  type        = string
  description = "The name of the organization."
  default     = null
}

variable "teams" {
  type        = list(any)
  description = "The teams of the organization."
  default     = []
}

variable "agree_terms" {
  type        = bool
  description = "Agreee terms sentry."
  default     = true
}
