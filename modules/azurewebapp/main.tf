data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}


resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type = "Linux"

  sku_name = var.sku_size
}


resource "azurerm_linux_web_app" "example" {
  for_each            = toset(var.web_apps)  

  name                = each.value        
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.example.id  

  site_config {
    always_on = true
  }

  app_settings = {
    "DOTNET_VERSION" = var.dotnet_version
  }
}