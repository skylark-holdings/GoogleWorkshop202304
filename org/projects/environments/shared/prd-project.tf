module "prj_delivery_dev" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = "565028776529" # dev folder  

  name       = "optn-delivery-dev" # dev
  group_name = "gcp-delivery-developer"
  group_role = "roles/container.admin"
}

module "prj_delivery_stg" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = "355293992486" # stg folder  

  name       = "optn-delivery-stg" # stg
  group_name = "gcp-delivery-developer"
  group_role = "roles/container.admin"
}

module "prj_delivery_prd" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"


  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = "710725754390" # prd folder  

  name       = "optn-delivery-prd" # prd
  group_name = "gcp-delivery-developer"
  group_role = "roles/container.admin"
}
