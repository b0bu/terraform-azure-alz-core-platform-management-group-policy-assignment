variable "management_group_id" {
  type        = string
  description = "A management group at which to assign policy"
}

variable "parameters" {
  type        = string
  description = "Json encoded map of parameter values used to template the policy at assignment"
  default = "{}"
}

variable "policy_id" {
  type        = string
  description = "The id of a policy returned after its creation"
}

variable "name" {
  type        = string
  description = "The assignment name (note this can be the same or different from the policy name) "
}