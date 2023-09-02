terraform {
  backend "azurerm" {
    resource_group_name   = "myResourceGroup"
    storage_account_name  = "abijithjithu"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

# terraform {
#   backend "azurerm" {
#     resource_group_name   = "your-resource-group"
#     storage_account_name  = "your-storage-account"
#     container_name        = "your-container-name"
#     key                   = "terraform.tfstate"
#   }
# }
