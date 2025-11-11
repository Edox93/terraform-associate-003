provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

#           Revising the Basics
# Resource are identified by the index value from the list

# Before
/*
variable "iam_names" {
  type = list 
  default = ["user-01", "user-02", "user-03"]

}

resource "aws_iam_user" "iam" {
    name = var.iam_names[count.index]
    count = 3
    path = "/system/"
  
}
*/

# If you ran terraform apply  will got an error -
#Error updated IAM user <user> EntityiAlreadyExists: User with name <user another> already exists
# After
/*
variable "iam_names" {
  type = list 
  default = ["user-0","user-01", "user-02", "user-03"]

}

resource "aws_iam_user" "iam" {
    name = var.iam_names[count.index]
    count = 4
    path = "/system/"
  
}
*/
# Important
#If resources are almost identical, count is appropriate
#If distinctive values are needed in the arguments, usage of for_each is recommended.

variable "iam_names" {
  type = list 
  default = ["user-0","user-01", "user-02", "user-03"]

}

resource "aws_instance" "server" {
  count = 4 # create four similar EC2 instances
  ami = "ami-d6as86d8as6d86"
  instance_type = "t3.micro"
}





