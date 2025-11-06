provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

variable "env" {
  default = "dev"
}

resource "aws_instance" "ec2" {
  instance_type = var.env == "dev" ? "t3.micro" : "t3.medium"
  #instance_type = var.env == "dev" && var.region == "us-east-1"  ? "t3.micro" : "t3.medium"
  ami = "ami-0bdd88bd06d16ba03"
}

#  terraform.exe plan -var=env=prd