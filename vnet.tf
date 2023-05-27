resource "azurerm_virtual_network" "vnet_sape_01" {
  name = "vnet_sape_01"

  location = azurerm_resource_group.rg_sape_01.location
  resource_group_name = azurerm_resource_group.rg_sape_01.name
  
  address_space = [var.vnet_cidr]
}