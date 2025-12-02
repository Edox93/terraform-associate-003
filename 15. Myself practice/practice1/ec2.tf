provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
  tags = {
    Type = "web"
  }
}

variable "list" {
  type = list 
  default = ["m5-large","m5.xlarge","t2.micro"]
}


resource "aws_instance" "web" {
  ami = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
  count = 3
}

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


variable "tags" {
  type = map
  default = {
    Team = "security-team"
  }
}

locals {
  default = {
    Team = "security-teams"
    CreationDate = "date-${formatdate("DDMMYYYY",timestamp())}"
  }
}

resource "aws_security_group" "sg_01" {
  name = "app_firewall"
  tags = local.default
}
