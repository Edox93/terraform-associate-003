provider "aws" {
  region = var.region
  shared_credentials_files = ["../../aws.key"]
  profile = "customprofile"  
}

variable "region" {
  default = "us-east-1"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-08a0d1e16fc3f61ea"
    "us-west-2" = "ami-0b20a6f09484773af"
    "ap-south-1" = "ami-0e1d06225679bc1c5"
  }
}


resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region) # ami-08a0d1e16fc3f61ea
   instance_type = "t2.micro"
   count = length(var.tags)  # 2

   tags = {
     Name = element(var.tags,count.index)
     CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp()) # "06 Nov 2025 20:41 UTC"
     # timestamp()  is current time in format 2025-11-06T20:41:29Z
   }
}
