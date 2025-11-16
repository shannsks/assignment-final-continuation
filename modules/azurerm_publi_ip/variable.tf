variable "pip_cv" {
  type = map(object({
    pip_name = string
    location = string
    resource_group_name = string 
    allocation_method = string
  }))
}