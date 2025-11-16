resource "azurerm_resource_group" "azurerm_rg" {
    for_each = var.rg_mcv

    name = each.value.name
    location = each.value.location
  
}