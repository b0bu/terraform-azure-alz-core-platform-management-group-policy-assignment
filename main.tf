resource "azurerm_management_group_policy_assignment" "assignment" {
  name                 = var.name
  policy_definition_id = var.policy_id
  management_group_id  = var.management_group_id
  parameters           = var.parameters
  display_name         = var.display_name
  description          = var.description

  location = "uksouth"
  dynamic "identity" {
    for_each = var.managed_identity == true ? [1] : []
    content {
      type = "SystemAssigned"
    }
  }
}