rg_dev = {

  rg_creation_list = {

    name     = "rg_sat"
    location = "centralindia"
  }

  rg_creation_list2 = {

    name     = "rg2_sat"
    location = "centralindia"
  }

  rg_creation_list3 = {

    name     = "rg3_sat"
    location = "centralindia"
  }

  rg_creation_list4 = {

    name     = "rg4_sat"
    location = "centralindia"
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

        name             = "frontend_vm_subnet"
        address_prefixes = ["10.0.0.1/24"]

      },

      {

        name             = "backend_vm_subnet"
        address_prefixes = ["10.0.0.2/24"]
    }]

  }
}




