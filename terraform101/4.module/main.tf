# https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/2.48.0
module "vpc_example_complete-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/complete-vpc"
  version = "2.48.0"
}