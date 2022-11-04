## Terraform documentation for Azure AD Group
## https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group

resource "azuread_group" "create_group" {
  display_name     = "terraform_group"
 # mail_enabled     = true
  mail_nickname    = "TerraformGroup"
  security_enabled = true

  members = [
    var.azuread_user_object_id,
  ]

  owners = [
    var.azuread_client_config.object_id,
    var.azuread_user_object_id,
  ]
  
}

/*
## This is not required.
## https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group_member
resource "azuread_group_member" "example" {
  group_object_id  = azuread_group.create_group.id
  member_object_id = var.azuread_user_id
}
*/
