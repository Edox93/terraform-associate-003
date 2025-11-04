resource "aws_instance" "ec2-terraform-as3-1" {
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-tag"
  }
}

resource "aws_instance" "ec2-terraform-as3-1" {
  ami           = "ami-0bdd88b5645646546"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-tag"
  }

}

#  Error: Duplicate resource "aws_instance" configuration