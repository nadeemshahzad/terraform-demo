variable "aws_region" {
  type = string
  description = "aws region"
}

provider "aws" {
  region  = var.aws_region
}
