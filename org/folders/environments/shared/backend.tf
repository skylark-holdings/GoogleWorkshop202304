terraform {
  backend "gcs" {
    bucket = "otpn-iac-terraform-state-shared"
    prefix = "org/folders/shared"
  }
}
