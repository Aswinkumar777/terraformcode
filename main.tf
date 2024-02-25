resource "azurerm_resource_group" "gitmodrg" {
  name     = var.rgname
  location = var.rgloc
}

resource "azurerm_storage_account" "gitstorage" {
  name                     = var.saname
  resource_group_name      = var.rgname
  location                 = var.rgloc
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = var.tags
  }
}