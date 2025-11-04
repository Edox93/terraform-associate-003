provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_instance" "example" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t3.micro"
}

//if YOu run terraform apply , after terraform plan you will see 
/*
aws_instance.example: Refreshing state... [id=i-06f924bfe5908a95d]
No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration
and found no differences, so no changes are needed.
*/

//