# main.tf

# # Create a resource group
# resource "azurerm_resource_group" "example" {
#   name     = "myResourceGroup"
#   location = "East US"
# }

# # Create a storage account within the resource group
# resource "azurerm_storage_account" "example" {
#   name                     = "mystorageaccount"
#   resource_group_name      = azurerm_resource_group.example.name
#   location                 = azurerm_resource_group.example.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# # Create a storage container within the storage account
# resource "azurerm_storage_container" "example" {
#   name                  = "tfstate"
#   storage_account_name  = azurerm_storage_account.example.name
#   container_access_type = "private"
# }
