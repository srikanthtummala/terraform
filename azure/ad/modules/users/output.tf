## Set creation of user output information to variable. 
output "azuread_user" {
  description = "Azure user deatils"
  value       = resource.azuread_user.create_user
}


output "azuread_user_id" {
  description = "Azure user deatils"
  value       = resource.azuread_user.create_user.id
}

output "azuread_user_object_id" {
  description = "Azure user deatils"
  value       = resource.azuread_user.create_user.object_id
}