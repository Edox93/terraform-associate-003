provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_instance" "myec2" {
   ami = "ami-04e5276ebb8451442"
   instance_type = "t3.micro"

   provisioner "local-exec" {
    //command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
    command = "echo ${self.public_ip} >> public_ip.txt"
    //command = "echo ${aws_instance.myec2.public_ip} >> public_ips.txt"
  }
}