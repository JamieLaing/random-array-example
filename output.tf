//output the resource group name
output "name" {
  description = "The Azure resource group"
  value       = {for key, value in azurerm_resource_group.sh : key => value.name}
}