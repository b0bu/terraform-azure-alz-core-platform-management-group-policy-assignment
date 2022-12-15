// these policies can remediate and therefore require a managed identity
resource "azurerm_management_group_policy_assignment" "assignments" {
  name                 = var.name
  policy_definition_id = var.policy_id
  management_group_id  = var.management_group_id
  parameters           = var.parameters

  location = "uksouth"
  dynamic identity {
    for_each = var.managed_identity == true ? [1] : []
    content {
    type = "SystemAssigned"
    }
  }
}