# https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/2.48.0
# Warning: 해당 모듈은 Free tier가 제공해주는 리소스 외의 것을 사용하며, 추가 요금을 발생시킵니다.
module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "2.48.0"
}