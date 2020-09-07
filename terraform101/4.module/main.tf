# https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/2.48.0
module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "2.48.0"
}