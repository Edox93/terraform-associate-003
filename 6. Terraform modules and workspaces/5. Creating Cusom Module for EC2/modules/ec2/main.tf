provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["../../aws.key"]
  profile                  = "customprofile"
}

resource "aws_instance" "myec2" {
  ami = "ami-0bb84b8ffd87024d8"
  instance_type = "t3.micro"
}

