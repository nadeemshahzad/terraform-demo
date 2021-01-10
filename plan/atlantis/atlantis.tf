variable "atlantis_vpc_name" {
  type = string
}

variable "atlantis_cidr_block" {
  type = string
}


module "atlantis_vpc" {
  source = "../../modules/vpc"
  vpc_name = var.atlantis_vpc_name
  vpc_cidr_block = var.atlantis_cidr_block
}
