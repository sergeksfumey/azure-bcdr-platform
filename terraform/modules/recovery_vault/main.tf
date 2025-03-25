
resource "azurerm_recovery_services_vault" "vault" {
  name                = var.vault_name
  location            = var.location
  resource_group_name = var.resource_group
  sku                 = "Standard"

  soft_delete_enabled = true
  identity {
    type = "SystemAssigned"
  }
}
