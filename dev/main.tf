module "rg-dev-module" {
    source = "../modules/azurerm_rg"
    rg_mcv = var.rg_dev
  
}

# module "vnet-dev-module"{
#     source = "../modules/azurerm_vnet"
#     vnet_mcv = var.vnet_dev
# }