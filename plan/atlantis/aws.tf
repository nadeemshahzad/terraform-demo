variable "aws_region" {
  type = string
  description = "aws region"
}

provider "aws" {
  region  = var.aws_region
}

terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = " 3.23.0"
  }
  backend "s3" {
    encrypt                 = true
    bucket                  = "terraform-demo-state-0001"
    key                     = "plan/atlantis"
    dynamodb_table          = "terraform-dynamodb-state-lock"
    region                  = "us-west-2"
    skip_metadata_api_check = true
  }
}
