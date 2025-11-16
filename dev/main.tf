module "rg-dev-module" {
    source = "../modules/azurerm_rg"
    rg_mcv = var.rg_dev
  
}


module "vnet-dev" {
    depends_on = [ module.rg-dev-module ]
    source = "../modules/azurerm_vnet"
    vnet_mcv = var.vnet_dev
  
}

module "lvm_nic" {
    depends_on = [ module.vnet-dev, module.rg-dev-module,module.pip ]
    source = "../modules/azurerm_linux_vm"
    lvm_nic_cv = var.lvm_dev
  
}

module "pip" {
    depends_on = [ module.rg-dev-module ]
    source = "../modules/azurerm_publi_ip"
    pip_cv = var.pip_dev
  
}