
provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 1.5.0"
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorage"
    container_name       = "tfstate"
    key                  = "bcdr.terraform.tfstate"
  }
}
