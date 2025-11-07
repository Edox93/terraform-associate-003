provider "aws" {
    #region = "us-east-1"
    region = "ap-south-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

data "aws_ami" "my-image" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-*"]
  }
}

resource "aws_instance" "web" {
  ami = data.aws_ami.my-image.image_id
  instance_type = "t3.micro"
}