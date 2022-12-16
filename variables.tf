variable "management_group_id" {
  type        = string
  description = "A management group at which to assign policy"
}

variable "parameters" {
  type        = string
  description = "Json encoded map of parameter values used to template the policy at assignment"
  default     = "{}"
}

variable "policy_id" {
  type        = string
  description = "The id of a policy returned after its creation"
}

variable "name" {
  type        = string
  description = "The assignment name (note this can be the same or different from the policy name) "
}

variable "managed_identity" {
  type        = bool
  default     = false
  description = "Create a policy assignment with a managed identity"
}

variable "description" {
  type        = string
  description = "A policy description displayed in the portal at assignment time"
}

variable "display_name" {
  type        = string
  description = "A name displayed in the portal at assignment time"
}