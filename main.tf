module "env_folders" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.0"

  parent = var.parent

  names = [
    "dev",
    "stg",
    "prd",
    "shared",
    "unmanaged"
  ]

  set_roles = false
}
