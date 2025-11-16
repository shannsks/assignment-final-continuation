variable "lvm_nic_cv" {

  type = map(object({
    nic_name             = string
    location             = string
    resource_group_name  = string
    subnet_name          = string
    virtual_network_name = string
    lvm_name             = string
    size                 = string
    admin_username       = string
    admin_password       = string
    pip_name             = string

    publisher = string
    offer     = string
    sku       = string
    version   = string

  }))

}
