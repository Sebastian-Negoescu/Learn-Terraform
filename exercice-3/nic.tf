variable "nic_coding_devops_name" {
  default = "nic_coding_devops"
}

variable "nic_private_ip" {
  default = "10.0.1.4"
}

variable "nic_coding_devops_ip_name" {
  default = "nic_coding_devops_ip"
}

resource "azurerm_network_interface" "nic_coding_devops" {
  name                = "${var.nic_coding_devops_name}"
  resource_group_name = "${azurerm_resource_group.rg_coding_devops.name}"
  location            = "${var.location}"

  ip_configuration {
    name                          = "${var.nic_coding_devops_ip_name}"
    subnet_id                     = "${azurerm_subnet.subnet_coding_devops.id}"
    private_ip_address            = "${var.nic_private_ip}"
    private_ip_address_allocation = "Static"
  }
}
