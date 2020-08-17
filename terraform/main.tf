terraform {
  required_version = ">= 0.12"

  backend "s3" {}
}

resource "aws_s3_bucket" "demo-bucket" {
  bucket = "${var.account_id}-demo-project"
  acl    = "private"

  versioning {
    enabled = true
  }
}