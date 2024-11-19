output "service_plan_id" {
  description = "The ID of the service plan"
  value       = module.azurewebapp.service_plan_id  
}

output "web_app_names" {
  description = "The names of the web apps created"
  value       = module.azurewebapp.web_app_names  
}