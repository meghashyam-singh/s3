terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.72.0"
    }
  }
  backend "s3" {
    bucket = "s3-257394454651-us-east-1-an"
    region = "us-east-1"
    key = "remote.tfstate"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}