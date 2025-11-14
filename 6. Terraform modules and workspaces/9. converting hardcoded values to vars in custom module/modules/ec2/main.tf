provider "aws" {
  region                   = var.region
  shared_credentials_files = ["../../../../aws.key"]
  profile                  = "customprofile" 
}

resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.instance_type
}

variable "ami" {}
variable "instance_type" {}
variable "region" {}

