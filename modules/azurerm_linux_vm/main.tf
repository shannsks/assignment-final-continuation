resource "azurerm_network_interface" "azurerm_nic" {
  for_each = var.lvm_nic_cv

  name = each.value.nic_name

  location            = each.value.location
  resource_group_name = each.value.resource_group_name


  ip_configuration {


    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.dat_subnet[each.key].id
    private_ip_address_allocation = "Dynamic"

  }


}


resource "azurerm_linux_virtual_machine" "azurerm_lvm" {
  for_each = var.lvm_nic_cv

  name                            = each.value.lvm_name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = each.value.admin_username
  admin_password                  = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.azurerm_nic[each.key].id
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.offer
    version   = each.value.version
  }
}
