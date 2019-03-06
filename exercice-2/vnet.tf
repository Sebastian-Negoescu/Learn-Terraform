resource "azurerm_virtual_network" "vnet_coding_devops" {
  name                = "vnet_coding_devops"
  location            = "West Europe"
  resource_group_name = "${azurerm_resource_group.rg_coding_devops.name}"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4"]
}

resource "azurerm_subnet" "subnet_coding_devops" {
  name                 = "subnet_coding_devops"
  resource_group_name  = "${azurerm_resource_group.rg_coding_devops.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet_coding_devops.name}"
  address_prefix       = "10.0.1.0/24"
}
