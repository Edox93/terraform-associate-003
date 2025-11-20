terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# in .terraform.lock.hcl
// provider "registry.terraform.io/hashicorp/aws" {
//   version     = "4.67.0"
//   constraints = "~> 4.0"