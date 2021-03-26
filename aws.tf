//--------------------------------------------------------------------
// Providers

provider "aws" {
  // Credentials set via env vars

  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "abhi-terraform-backup"
    key    = "terraform/"
    region = "us-east-1"
  }
}

