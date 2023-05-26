resource "azurerm_resource_group" "foo" {
  name   = "rg-fromscratch-dmd"
  location = var.rg_location
  tags = var.rg_tags
}