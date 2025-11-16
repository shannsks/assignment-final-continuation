rg_dev = {

  rg_creation_list = {

    name     = "rg_sat"
    location = "centralindia"
  }
}


vnet_dev = {

  vnet_creation = {

    vnet_name            = "vnet-sat"
    location             = "centralindia"
    resource_group_name  = "rg_sat"
    virtual_network_name = "vnet_sat"
    address_space        = ["10.0.0.0/16"]



    subnets = [
      {

        subnet_name      = "frontend_vm_subnet"
        address_prefixes = ["10.0.0.1/24"]

      },

      {

        subnet_name      = "backend_vm_subnet"
        address_prefixes = ["10.0.0.2/24"]
      }
    ]

  }
}


lvm_dev = {

  vm_nic_creation = {

    nic_name             = "nic_sun"
    location             = "centralindia"
    resource_group_name  = "rg_sat"
    subnet_name          = "subnet_sun"
    virtual_network_name = "vnet_sat"
    lvm_name             = "frontend_vm"
    size                 = "Standard_F2"
    admin_username       = "admin_user"
    admin_password       = "Welcome@1234"
    pip_name             = "pip_sun"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  vm_nic_creation2 = {


    nic_name             = "nic_sun"
    location             = "centralindia"
    resource_group_name  = "rg_sat"
    subnet_name          = "subnet_sun"
    virtual_network_name = "vnet_sat"
    lvm_name             = "backend_vm"
    size                 = "Standard_F2"
    admin_username       = "admin_user"
    admin_password       = "Welcome@1234"
    pip_name             = "pip_sun"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"


  }


}



pip_dev = {

  pip_creation = {
    pip_name            = "pip_sun"
    location            = "centralindia"
    resource_group_name = "rg_sat"
    allocation_method   = "Dynamic"
  }
}




