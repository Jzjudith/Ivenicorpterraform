terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
   cloud {               
    organization = "ivenicorp"
    workspaces {
      name = "iveniterrafoem"   
    }
  }
}

provider "azurerm" {
  features {}
  client_id = "92a9ef06-076f-430e-a81c-56ce57c97a56"
  client_secret = "Z~25dU48MUTfGWepjUW4OAcQm4~NmYVATE"
  subscription_id = "731714f1-81e2-455d-920e-d8cf57910214"
  tenant_id = "90487acd-7920-404e-958a-c5005bffb692"
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
