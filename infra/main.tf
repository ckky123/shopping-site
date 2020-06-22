provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

resource "aws_s3_bucket" "code_bucket" {
  bucket = "wl-tf-code"
  acl    = "private"
}