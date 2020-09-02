# 나는 hashicorp/aws 프로바이더를 사용할거야
# https://registry.terraform.io/providers/hashicorp/aws/latest
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# 아까 내가 hashicorp/aws 사용할 거라고 했지?
# 나는 이 로컬 컴퓨터의 default profile을 사용하는 AWS 계정의 인프라들을 관리할거야.
# 그 중에서도 ap-northeast-2 (서울 리전)의 인프라를 관리할거야.
provider "aws" {
  profile = "default"
  region  = "ap-northeast-2"
}