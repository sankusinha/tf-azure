# Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = data.azurerm_resource_group.rg_existing.location
  resource_group_name = data.azurerm_resource_group.rg_existing.name
  tags                = var.tags
}