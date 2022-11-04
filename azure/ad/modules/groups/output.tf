output "azuread_group" {
  description = "Azure group deatils"
  value       = resource.azuread_group.example
}

output "azuread_group_member" {
  description = "Azure group member deatils"
  value       = resource.azuread_group_member.example
}
