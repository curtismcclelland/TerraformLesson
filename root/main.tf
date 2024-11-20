terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "tf-backend-rg"
    storage_account_name  = "tfbackendstorage"
    container_name        = "tfstate"
    key                   = "${var.environment}.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.vnet_address_space
  subnets             = var.subnets
}

output "vnet_id" {
  value = module.network.vnet_id
}