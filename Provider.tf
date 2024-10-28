terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.65.0"
    }
  }
}

provider "aws" {
  shared_config_files      = [var.config-path]
  shared_credentials_files = [var.cred-file-path]
  profile                  = var.profile-name
  region                   = var.provider-region
}