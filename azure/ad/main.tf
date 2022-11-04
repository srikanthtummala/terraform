
## Get AAD details.
module "base" {
  source = "./modules/base"
}


output "base" {
  value = module.base
}

## Create User in AAD.
module "create_user" {
  source = "./modules/users"
}

output "user_id" {
  value = module.create_user.azuread_user_id
}

output "user_object_id" {
  value = module.create_user.azuread_user_object_id
}

## Create Group in AAD.
module "create_group" {
  source                = "./modules/groups"
  azuread_client_config = module.base.azuread_client_config
  azuread_user_id        = "${module.create_user.azuread_user_id}"
  azuread_user_object_id = module.create_user.azuread_user_object_id
}