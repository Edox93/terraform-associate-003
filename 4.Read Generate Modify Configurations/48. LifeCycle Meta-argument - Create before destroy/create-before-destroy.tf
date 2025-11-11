# Before
provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }
}


/*
With meta argument      lifecycle {
      create_before_destroy = true
    }

IF you manualy create a ec2 and afte run terraform plan with ec2 resource block, terraform firt will be create a new ec2 afer destroy manualy created.    
*/

# After
provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }

    lifecycle {
      create_before_destroy = true
    }
}