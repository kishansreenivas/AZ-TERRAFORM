# Output for service plan ID
output "service_plan_id" {
  value = azurerm_service_plan.example.id  
}

# Output for the list of web app names
output "web_app_names" {
  description = "List of names for all created Web Apps"
  value       = [for app in azurerm_linux_web_app.example : app.name] 
}