terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
    token = ""
}

resource "github_repository" "example2" {
  name        = "example2"
  description = "My awesome codebase"
  visibility = "public"
}

provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

/*
resource "aws_instance" "ec2-terraform-as3-1" {
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
} */

# --target aws_instance.ec2-terraform-as3-1
# For the future u can commnet this resource