#variable "my-list" {
#  type = list
#}

#output "variable_value" {
#  value = var.my-list
#}

provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_instance" "web" {
  ami = "ami-123"
  instance_type = "t3.micro"
  #vpc_security_group_ids = ["sg-g87fd8gdg8df7g8"]
  vpc_security_group_ids = ["sg-g87fd8gdg8df7g8", "sg-gfdgfdgfdgfdg"]
}