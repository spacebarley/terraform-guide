terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-northeast-2"
}

module "simple-ec2-from-first" {
  source  = "../1.resource"
}

module "simple-ec2-from-second" {
  source  = "../2.data"
}