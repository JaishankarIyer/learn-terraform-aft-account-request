module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jais1820+testeraccount28112023@jtp.co.jp"
    AccountName               = "sandbox-aft-28112023"
    ManagedOrganizationalUnit = "Sandbox AFT"
    SSOUserEmail              = "jais1820+testeraccount28112023@jtp.co.jp"
    SSOUserFirstName          = "Sandboxuser"
    SSOUserLastName           = "AFTtest"
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

  account_customizations_name = "sandbox"
}
