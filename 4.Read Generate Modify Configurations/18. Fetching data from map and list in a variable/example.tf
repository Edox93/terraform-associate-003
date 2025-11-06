provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_instance" "myec2" {
  ami = "ami-0bdd88bd06d16ba03"
  instance_type = var.types["ap-south-1"]
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t3.micro"
    us-west-2 = "t2.nano"
    ap-south-1 = "t2.small"        
  }
}


resource "aws_instance" "myec3" {
  ami = "ami-0bdd88bd06d16ba03"
  instance_type = var.list[0]
}

variable "list" {
  type = list 
  default = ["m5-large","m5.xlarge","t2.micro"]
}
