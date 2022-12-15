// output identity id after creation?
output "identity" {
  value = azurerm_management_group_policy_assignment.assignment.identity
}