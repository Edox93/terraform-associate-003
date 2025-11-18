data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket  = "edox-networking-bucket" 
    key     = "e_ip.tfstate"
    region  = "us-east-1"
    shared_credentials_files = ["../../../aws.key"]
    profile                  = "customprofile"   
  }
  
}