output "connection_string" {
  value = azurerm_storage_account.bar.primary_blob_connection_string
  sensitive = true
}