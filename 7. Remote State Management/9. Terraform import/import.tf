provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["../../aws.key"]
  profile                  = "customprofile"  
}

import {
  to = aws_security_group.my_sg
  id = "sg-0d606956580030350"
}

# to import call   terraform plan "-generate-config-out=my_sg.tf"
# after terraform apply for generating tfstate file