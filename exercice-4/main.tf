provider "azurerm" {}

variable "rg_coding_devops_name" {
  default = "rg_coding_devops"
}

resource "azurerm_resource_group" "rg_coding_devops" {
  name     = "${var.rg_coding_devops_name}"
  location = "${var.location}"
}
