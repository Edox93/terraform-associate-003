provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_eip" "lb" {
    domain = "vpc"
  
}

resource "aws_instance" "ec2-terraform-attributes" {
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
}