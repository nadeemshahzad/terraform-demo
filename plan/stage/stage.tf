# Resource example
resource "aws_iam_user" "stage_demo1" {
     name = "stage-demo-00001"   # Required argument
     path = "/sre/"              # Optional argument
}

## To render template from template file
data "template_file" "policy" {
     template = file("../../templates/s3-policy.json")
     vars = {
          bucket_name = "stage_demo_0000001_bucket"
     }   
}

resource "aws_iam_user_policy" "stage_demo_user_s3_access_policy" {
      name = "stage_demo_user_s3_acccess_policy"
      user = aws_iam_user.stage_demo.name     # RESOURCE TYPE.NAME.name
      policy = data.template_file.policy.rendered
}

variable "stage_vpc_name" {
  type = string
}

variable "stage_cidr_block" {
  type = string
}


# Call Module
module "stage_vpc" {
  source = "../../modules/vpc"
  vpc_name = var.stage_vpc_name
  vpc_cidr_block = var.stage_cidr_block
}
