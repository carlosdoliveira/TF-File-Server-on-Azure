terraform {
  backend "azurerm" {
    resource_group_name  = "tstate"
    storage_account_name = "terrastate2020"
    container_name       = "terrastate"
    key                  = "fileserver.tfstate"
  }
}

// Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "all" {
  name     = "rg-AzureFileServer"
  location = "eastus2"
}