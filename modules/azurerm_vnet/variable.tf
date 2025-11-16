variable "vnet_mcv" {
  type = map(object({
    vnet_name           = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    
    subnets = optional(
      list(
        
        object({

      subnet_name      = string
      address_prefixes = list(string)
    })
    )
    )


  }))
}


