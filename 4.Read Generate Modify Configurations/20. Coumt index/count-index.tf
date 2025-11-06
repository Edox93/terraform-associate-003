provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

#resource "aws_instance" "web" {
#  ami = "ami-0bdd88bd06d16ba03"
#  instance_type = "t3.micro"
#  count = 3
#  tags = {
#    Name = "web-${count.index}"
#  }
#}

# OR

variable "server-list" {
    type = list
    default = ["web", "app", "svc"]
}

resource "aws_instance" "web" {
  ami = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
  count = 3
  tags = {
    Name = var.server-list[count.index]
  }
}