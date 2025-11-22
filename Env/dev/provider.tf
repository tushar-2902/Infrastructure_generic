terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
    
  backend "azurerm" {
    resource_group_name = "rgtushar"                                                        
    storage_account_name = "tusharstorage420"                              
    container_name       = "tfstate"                               
    key                  = "dev.terraform.tfstate"                
  }
}

provider "azurerm" {
  # Configuration options
  features { }
}