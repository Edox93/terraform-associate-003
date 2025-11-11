provider "aws" {
  region     = "us-east-1"
}


# Before
resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }
}

provider "aws" {
  region     = "us-east-1"
}

#After creating go to AWS console and add tag   ENV: Production  manualy
# terraform apply will be delete
#If You add lifecycle() block inside of resource block


#then

# After
resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }

    lifecycle {
        ignore_changes = [tags]
    }
}