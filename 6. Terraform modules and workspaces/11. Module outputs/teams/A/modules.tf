provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["../../../../aws.key"]
  profile                  = "customprofile" 
}
 
module "ec2" {
  source = "../../modules/ec2"
}

resource "aws_eip" "this" {
  domain = "vpc"
  instance = module.ec2.instance_id
  
}