terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0"  
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

  data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

// webapp file
module "azurewebapp" {
  source                = "./modules/azurewebapp"
  app_service_plan_name = var.app_service_plan_name  
  sku_tier              = var.sku_tier
  sku_size              = var.sku_size
  dotnet_version        = var.dotnet_version
  resource_group_name   = var.resource_group_name
  location              = var.location
  web_apps              = var.web_apps
}


