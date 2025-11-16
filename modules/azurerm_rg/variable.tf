variable "rg_mcv" {

    type = map(object({
      name = string
      location = string 
    }))
  
}