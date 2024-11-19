terraform {
  backend "azurerm" {
    resource_group_name   = "sa1_test_eic_KishanPS"
    storage_account_name  = "terrastorage0"
    container_name        = "prod-tfstate"
    key                   = "prod.terraform.tfstate"
  }
}