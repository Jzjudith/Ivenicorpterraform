#  Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

#  Azure resource group
resource "azurerm_resource_group" "rg" {
  name     = "KnixatResGrp"
  location = "westus2"
}
#  Azure virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "KnixatVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = "KnixatResGrp"

}

#  Azure subnet
resource "azurerm_subnet" "sbnet" {
  name                 = "KnixatSubnet"
  resource_group_name  = "KnixatResGrp"
  virtual_network_name = "KnixatVnet"
  address_prefixes     = ["10.0.1.0/24"]
    
}
