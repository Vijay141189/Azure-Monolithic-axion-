terraform {
   required_version = ">= 1.9.0, < 2.0.0"
   
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-state-storage"
    storage_account_name = "axionstatestore10432"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
