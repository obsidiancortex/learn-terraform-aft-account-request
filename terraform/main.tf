module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "peram32905@fkcod.com"
    AccountName               = "AFT"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "mahamatismail3@gmail.com"
    SSOUserFirstName          = "Obsidian"
    SSOUserLastName           = "Cortex"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "aft"
}
