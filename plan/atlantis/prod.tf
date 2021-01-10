variable "prod_vpc_name" {
  type = string
}

variable "prod_cidr_block" {
  type = string
}


module "prod_vpc" {
  source = "../../modules/vpc"
  vpc_name = var.prod_vpc_name
  vpc_cidr_block = var.prod_cidr_block
}
