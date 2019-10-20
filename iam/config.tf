provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  backend "s3" {
    bucket = "my-first-terraform"
    key = "sample/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
