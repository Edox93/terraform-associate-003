provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_eip" "lb" {
    domain = "vpc"
  
}

output "ip_output" {
  value = aws_eip.lb.public_ip 
#  value = "https://${aws_eip.lb.public_ip}:80"

# or U can get all attributes like value
#  value = aws_eip.lb

}