data "azurerm_resource_group" "rg" {
    name = var.rg_name  
}


resource "azurerm_storage_account" "bar" {
  name                     = "stfromscratchdmd"
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = var.replication_type

   tags = var.tags
}

resource "azurerm_storage_container" "example" {
  name                  = "content"
  storage_account_name  = azurerm_storage_account.bar.name
  container_access_type = "container"
}

resource "azurerm_key_vault_secret" "sa-con-string" {
  name         = "sa-connection-string"
  value        = azurerm_storage_account.bar.primary_blob_connection_string
  key_vault_id = var.key_vault_id
}
