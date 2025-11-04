provider "azurerm" {
}


resource "aws_instance" "ec2-terraform-as3-3" {
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-tag"
  }
}