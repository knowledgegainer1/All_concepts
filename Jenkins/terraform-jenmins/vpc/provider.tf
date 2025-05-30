terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3"{
  bucket = "tfstate-ssr-bucket"
  key = "vpc-complete1"
  region = "us-east-1"
  dynamodb_table = "ssrg-locking"
}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

