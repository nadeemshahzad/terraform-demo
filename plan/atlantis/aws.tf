variable "aws_region" {
  type = string
  description = "aws region"
}

provider "aws" {
  region  = var.aws_region
}

terraform {
  backend "s3" {
    bucket                  = "nadeem-state-0001"
    key                     = "atlantis"
    region                  = "us-east-1"
  }
}
