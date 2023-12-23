//generate a random pet resource and apply that name to a resource group
resource "random_pet" "petname" {
  length    = 2
  separator = "-"
}

resource "azurerm_resource_group" "sh" {
  for_each = var.groups
  name     = "${each.value.name}-${random_pet.petname.id}"
  location = var.resource_group_location
}