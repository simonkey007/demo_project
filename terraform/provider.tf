provider "aws" {
  version             = "2.70.0"
  region              = var.region
  allowed_account_ids = [var.account_id]

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/automation-concourse"
  }
}