provider "aws" {
  region = "app-south-1"
  shared_credentials_files = ["../../../../aws.key"]
  profile                  = "customprofile" 
}
 
module "ec2" {
  source = "../../modules/ec2"
  instance_type = "t3.micro"
  ami = "ami-123"
}