terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
    
  # backend "azurerm" {
  #   resource_group_name = "rgtushar"                                                        
  #   storage_account_name = "tusharstorage420"                              
  #   container_name       = "tfstate"                               
  #   key                  = "dev.terraform.tfstate"                
  # }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "0fed9206-7606-41d6-bea8-83033d2b432f"
}