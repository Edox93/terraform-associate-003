provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["../../aws.key"]
  profile                  = "customprofile"
}

# This module will be create 4 resources (ec2, sec group, ingress, egress)
module "ec2-instance_example_complete" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.1.4"

  # IF:  Error: multiple EC2 Subnets matched; use additional constraints to reduce matches to a single EC2 Subnet
  subnet_id      = "subnet-026127ebf497ce9d2"
}
