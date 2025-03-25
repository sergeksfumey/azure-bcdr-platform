
resource "azurerm_backup_policy_vm" "backup_policy" {
  name                = "DailyBackupPolicy"
  resource_group_name = var.resource_group
  recovery_vault_name = var.vault_name

  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "23:00"
  }
  retention_daily {
    count = 30
  }
}
