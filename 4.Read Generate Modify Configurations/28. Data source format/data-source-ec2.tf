provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

# For a single instance For lot of info

data "aws_instance" "get" {
    filter {
      name = "tag:Name"
      values = ["app"]
    }
}

##Form multiple
#data "aws_instances" "get" {
#  
#}