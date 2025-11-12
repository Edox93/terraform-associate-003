provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

variable "user_names" {
  type = set(string)
  default = [ "alice","bob","john" ]
}

/* Not valid
  type = set(string)
*/

resource "aws_iam_user" "this" {
  for_each = var.user_names
  name = each.value
}

variable "mymap" {
  default = {
    dev = "ami-123"
    prd = "ami-456"
  }
}

resource "aws_instance" "web" {
  for_each      = var.mymap
  ami           = each.value
  instance_type = "t3.micro"

  tags = {
    name = each.key 
  }
}

