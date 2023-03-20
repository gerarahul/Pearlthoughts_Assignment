provider "aws" {
  region  = var.aws_region
  profile = "rahulaws_credentials"
}

terraform {
  backend "s3" {
    bucket = "terraformfiles911"
    key    = "Nodejsapp_/development/terraform.tfstate"
    region = "ap-south-1"
  }
}
