// Azure Provider
provider "azurerm" {
  version = "~> 2.3.x"
  features {}
}

resource "azurerm_resource_group" "all" {
  name = "rg-AzureFileServer"
  location = "eastus2"
}