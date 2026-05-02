location = "eastus"
tags = {
  environment = "dev"
  owner       = "divya"
}
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"

type = "private"

name = "mydivyaresource"
# cicd-fix: Added tfvars values for the existing environment and owner variables so CI plan does not prompt for missing inputs.

# cicd-fix: satisfy existing required variable during noninteractive plan
environment = "dev"
# cicd-fix: satisfy existing required variable during noninteractive plan
owner = "divya"
