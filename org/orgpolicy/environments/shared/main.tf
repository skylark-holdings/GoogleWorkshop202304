terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.39.0"
    }
  }
}

resource "google_organization_policy" "iam_disableServiceAccountKeyCreation" {
  org_id   = var.org_id
  constraint = "iam.disableServiceAccountKeyCreation"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "iam_automaticIamGrantsForDefaultServiceAccounts" {
  org_id   = var.org_id
  constraint = "iam.automaticIamGrantsForDefaultServiceAccounts"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "iam_allowedPolicyMemberDomains" {
  org_id   = var.org_id
  constraint = "iam.allowedPolicyMemberDomains"

  list_policy {
    allow {
      values =  ["C00oposnn"]
    }
  }
}

resource "google_organization_policy" "compute_vmExternalIpAccess" {
  org_id   = var.org_id
  constraint = "compute.vmExternalIpAccess"

  list_policy {
    deny {
      all = true
    }
  }
}

resource "google_organization_policy" "sql_restrictPublicIp" {
  org_id   = var.org_id
  constraint = "sql.restrictPublicIp"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "storage_publicAccessPrevention" {
  org_id   = var.org_id
  constraint = "storage.publicAccessPrevention"

  boolean_policy {
    enforced = true
  }
}
