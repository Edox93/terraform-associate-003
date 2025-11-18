provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["../../../aws.key"]
  profile                  = "customprofile"  
}

terraform {
  backend "s3" {
    bucket  = "edox-networking-bucket" 
    key     = "e_ip.tfstate"
    region  = "us-east-1"
    shared_credentials_files = ["../../../aws.key"]
    profile                  = "customprofile"
  }
}
