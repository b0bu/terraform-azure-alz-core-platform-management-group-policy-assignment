// can't index .identity here as not all assignments will have contents
output "assignment" {
  value = {
    name = azurerm_management_group_policy_assignment.assignment.name
    identity = azurerm_management_group_policy_assignment.assignment.identity
  }
}