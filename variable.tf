variable "resource_group_name" {
  default = "sa1_test_eic_KishanPS"
}
 
variable "location" {
  default = "southeastasia"
}
 
// variable for webapp
variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "serviceplan02640" 
}
 
variable "web_apps" {
  default = ["eIcWebAppDEV", "eIcWebAppPROD", "eIcWebAppSTAGE"]
}
 
 
variable "sku_tier" {
  default = "Standard"
}
 
variable "sku_size" {
  default = "S1"
}
 
variable "dotnet_version" {
  default = "v6.0"
}
 
 
 