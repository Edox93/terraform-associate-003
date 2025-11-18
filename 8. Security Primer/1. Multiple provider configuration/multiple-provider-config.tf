provider "aws" {
    region = "ap-southeast-1"
    shared_credentials_files = ["../../aws.key"]
    profile                  = "customprofile"      
}

provider "aws" {
    alias = "mumbai"
    region = "ap-south-1"
    shared_credentials_files = ["../../aws.key"]
    profile                  = "customprofile"      
}

provider "aws" {
    alias = "usa"
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile                  = "customprofile"  
}

resource "aws_security_group" "allow_tls_a" {
    name = "prod_firewall"
    provider = aws.mumbai
}


resource "aws_security_group" "allow_tls_b" {
  name = "staging_firewall"
  provider = aws.usa
}