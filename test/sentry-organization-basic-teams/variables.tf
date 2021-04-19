variable "name" {
  type        = string
  description = "The name of the organization."
}

variable "slug" {
  type        = string
  description = "The name of the organization."
  default     = null
}

variable "agree_terms" {
  type        = bool
  description = "Agreee terms sentry."
  default     = true
}

variable "teams" {
  type        = list(any)
  description = "The list of teams for the organization."
  default     = []
}
