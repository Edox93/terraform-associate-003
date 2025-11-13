provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["../../aws.key"]
  profile                  = "customprofile"
}

module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
}
