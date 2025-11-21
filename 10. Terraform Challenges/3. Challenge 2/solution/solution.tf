/*
# Before
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"

    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "splunk" {
  default = "8088"
}
resource "aws_security_group" "security_group_payment_app" {
  name        = "payment_app"
    description = "Application Security Group"
  depends_on = [aws_eip.example]

# Below ingress allows HTTPS  from DEV VPC
  ingress {
       from_port        = 443
     to_port          = 443
    protocol         = "tcp"
      cidr_blocks      = ["172.31.0.0/16"]
  }

# Below ingress allows APIs access from DEV VPC

  ingress {
    from_port        = 8080
      to_port          = 8080
    protocol         = "tcp"
       cidr_blocks      = ["172.31.0.0/16"]
  }

# Below ingress allows APIs access from Prod App Public IP.

  ingress {
    from_port        = 8443
      to_port          = 8443
    protocol         = "tcp"
       cidr_blocks      = ["${aws_eip.example.public_ip}/32"]
  }
}
 egress {
    from_port        = var.splunk
    to_port          = var.splunk
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]     # Fix egress block, move to aws_security_group block
  }



resource "aws_eip" "example" {
   domain = "vpc"
}

# After run terraform validate, u will see the domain = "vpc" not exits in older aws version
Run terrfrom init -upgrade to upgrade .terraform.lock.hcl file version
Run terraform fmt challenge2.tf to fix indentations
Create variables.tf and pot vars to that file
Create terraform.tfvars for variable ports
Move variable "splunk" to variables.tf
Create tags for securityi group
To change splunk port to 8089 run terraform plan -var "splunk=8089"
Make name of aws_security_group shorte, tags helps
Add descriptin blocks to ingress and egress
Separate providers.tf secuirty.tf eip.tf

*/


resource "aws_eip" "example" {
  domain = "vpc"

  tags = {
    Name = "payment_app"
    Team = "Payments Team"
    Env  = "Production"
  }
}