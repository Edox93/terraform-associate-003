provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

#resource "aws_instance" "ec2-terraform-as3-1" {
#  ami           = "ami-0bdd88bd06d16ba03"
#  instance_type = "t3.micro"
#
#}

resource "aws_instance" "ec2-terraform-as3-1" {
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-tag"
  }
# We modified ec2 and added name with tags param  
}

#terraform init (downlod provider plugins and store localy in .terraform directory)
#terraform plan (not important, it's for see to comming changes)
#terraform apply

# Doc for this lesson
# https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%201%20-%20Deploying%20Infrastructure%20with%20Terraform/first-ec2.md

# The AWS Access/Secret keys are like username and password for your AWS account.
# Whenever adding your code with your query in the Question/Answer section of Udemy, 
# ensure that you DO NOT post the access/secret keys along with the code. 
# You can remove the keys and add the code snippet.
