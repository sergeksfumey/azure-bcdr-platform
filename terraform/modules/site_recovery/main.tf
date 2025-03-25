
resource "azurerm_site_recovery_fabric" "primary" {
  name                = "PrimaryFabric"
  resource_group_name = var.resource_group
  recovery_vault_name = var.vault_name
  location            = var.location
}

resource "azurerm_site_recovery_protection_container" "primary_container" {
  name                    = "PrimaryContainer"
  recovery_vault_name     = var.vault_name
  resource_group_name     = var.resource_group
  recovery_fabric_name    = azurerm_site_recovery_fabric.primary.name
}
