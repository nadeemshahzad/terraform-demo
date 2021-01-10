# Input variables declared with variable Blocks can have default values in definition and type of string, number, bool, list, map, set and tuple

variable "aws_region" {
  type = string
  description = "aws region"
# default = "us-west-2"
}

# Terraform Providers
# https://registry.terraform.io/browse/providers

# Terraform AWS provider is used to interace with aws resources
# Use provider block to define provider

provider "aws" {
  region  = var.aws_region
}

# Terraform settings block to define settings of terraform and pin provider (aws) version 
terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = " 3.23.0"
  }
}













# Terraform init to initilalize current working directory: Initialize modules, plugins, backednd configuration
# create .terraform sub-directory in current working directory to keep data such as backend configuration, providers
# Running multiple times will not make any effect.

######terraform init
######Initializing modules...
######
######Initializing the backend...
######
######Initializing provider plugins...
######- Using previously-installed hashicorp/aws v3.23.0
######- Using previously-installed hashicorp/template v2.2.0
######
######The following providers do not have any version constraints in configuration,
######so the latest version was installed.
######
######To prevent automatic upgrades to new major versions that may contain breaking
##### changes, we recommend adding version constraints in a required_providers block
######in your configuration, with the constraint strings suggested below.
######
######* hashicorp/template: version = "~> 2.2.0"
######
######Terraform has been successfully initialized!
######
######You may now begin working with Terraform. Try running "terraform plan" to see
######any changes that are required for your infrastructure. All Terraform commands
######should now work.
######
######If you ever set or change modules or backend configuration for Terraform,
######rerun this command to reinitialize your working directory. If you forget, other
######commands will detect it and remind you to do so if necessary.

##### terraform plan
##### terraform apply

##### Target the changes
##### terraform plan -target=module.stage_vpc
##### terraform plan -target=aws_iam_user.stage_demo


