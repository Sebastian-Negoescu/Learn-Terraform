provider "azurerm" {}

resource "azurerm_resource_group" "rg_coding_devops" {
  name     = "rg_coding_devops"
  location = "West Europe"
}
