variable "resource_group_location" {
  default     = "westus3"
  description = "Location of the resource group."
}

//create a variable named server that includes a type map object with an array of strings
variable "groups" {
  type = map(object({
    name = string
  }))
  default = {
    g1 = {
      name = "group-one"
    },
    g2 = {
      name = "group-two"
    },
    g3 = {
      name = "group-three"
    },
  }
}
