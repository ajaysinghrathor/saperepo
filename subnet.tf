resource "azurerm_subnet" "subnet_sape_01" {
  name = "subnet_sape_01"
  resource_group_name = azurerm_resource_group.rg_sape_01.name
  virtual_network_name = azurerm_virtual_network.vnet_sape_01.name

  address_prefixes = [var.subnet_cidr]
}