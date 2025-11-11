terraform {
  required_version = "1.12.2"
    required_providers {
        aws ={
          version = ">= 6.20.0"
          source = "hashicorp/aws"
        }
    }
}


resource "aws_security_group" "sg_01" {
  name = "app_firewall"
}

provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

