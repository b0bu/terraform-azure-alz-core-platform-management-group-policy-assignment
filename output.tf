// output identity id after creation?
output "principal_ids" {
  value = azurerm_management_group_policy_assignment.assignments
}