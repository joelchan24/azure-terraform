data "azurerm_resource_group" "joel-chan" {
  name = "heber-cervantes"
}

resource "azurerm_virtual_network" "test-network" {
  name                = "helloworld-network"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.joel-chan.location
  resource_group_name = data.azurerm_resource_group.joel-chan.name
}
