# Variable definitions files ending with .tfvars
# Terraform automaticaly loads variable values from terraform.tfvars file

# Environment variables defined with TF_VAR_(name_of_variable)
# export TF_VAR_region='us-west-2'

aws_region = "us-west-2"

stage_vpc_name = "stage"
stage_cidr_block = "10.8.0.0/24"
