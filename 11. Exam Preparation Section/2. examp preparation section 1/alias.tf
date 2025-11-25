provider "aws" {
  region = "ap-southeast-1"
}

provider "aws" {
  alias = "mumbai"
  region = "ap-south-1"
}

provider "aws" {
  alias = "usa"
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  provider = aws.mumbai
  ami = "ami-123"
  instance_type = "t3.micro"
}

resource "aws_security_group" "allow_tls" {
  provider = aws.usa
  name = "stg_firewall"
}
