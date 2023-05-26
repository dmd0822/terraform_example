terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.57.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.39.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "./modules/rg"
  environment = var.env
  rg_tags = var.tags
  rg_location = var.location  
}

module "kv" {
  source = "./modules/kv"
  env = var.env
  tags = var.tags
  rg_name = module.resource_group.rg_name
}

module "sa" {
  source = "./modules/sa"

  replication_type = var.replication_type
  env = var.env
  tags = var.tags
  rg_name = module.resource_group.rg_name
  key_vault_id = module.kv.kv_id  
}


