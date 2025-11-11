provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

# Before
resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }
}

/*

   ignore_changes = [tags]
In this case if you added manualy kry value tag
In the terraform plat this change will be ignored

    ignore_changes = [instance_type]
In this case if you modified for example t2.micro to t3.micro with this tag
the terraform plan will be ignored that

*/

# After
resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }

    lifecycle {
      ignore_changes = [tags,instance_type]
    }    
}