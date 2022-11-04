## Terraform documentation for Azure AD user
## https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/user

resource "azuread_user" "create_user" {
  user_principal_name         = "usertf1@srikanthsoagmail.onmicrosoft.com"
  display_name                = "Terraform User 1"
  # Optional variables
  password                    = "S3cr3t!1234"
  given_name                  = "User 1"
  surname                     = "Terraform" 
  job_title                   = "automation"
  employee_id                 = "A001234"
  employee_type               = "Employee"
  street_address              = "Hilde-Wulff-Weg 7" 
  city                        = "Hamburg"
  state                       = "Hamburg" 
  country                     = "Germany"
  postal_code                 = "22045"
  office_location             = "Hamburg"
  mail                        = "usertf1@srikanthsoagmail.onmicrosoft.com"
  mail_nickname               = "usertf1"
  other_mails                 = []
  mobile_phone                = "0123456789"
  fax_number                  = "040998899"
  company_name                = "My Company"
  department                  = "IT Automation"
  cost_center                 = "123456"
  division                    = "Corporate Systems"
#  manager_id                  = "001"
  business_phones             = [] 
  age_group                   = "Adult" # Values Adult, NotAdult, Minor
  preferred_language          = "EN" 
  consent_provided_for_minor  = "NotRequired" # Values Granted, Denied , NotRequired
  show_in_address_list        = "true"
  force_password_change       = "false"
  disable_password_expiration = "false"
  disable_strong_password     = "false"
  usage_location              = "DE" 
#  creation_type               = ""  # Values null, Invitation, LocalAccount, EmailVerified
  account_enabled             = "true"
}