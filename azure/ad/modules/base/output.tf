output "azuread_client_config" {
  description = "Get Azure AD deatils."
  value       = data.azuread_client_config.current
}