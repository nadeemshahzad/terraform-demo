# Terraform Modules are configuration files in folder to reuse code

variable "vpc_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name        = var.vpc_name
  }
}

