terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    //  version = "~> 6.0"
    //  version = "6.19.0"
    //  version = "5.0"
      version = "4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}