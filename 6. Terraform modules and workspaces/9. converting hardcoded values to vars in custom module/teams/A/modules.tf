module "ec2" {
  source = "../../modules/ec2"
  instance_type = "t3.micro"
  ami = "ami-123"
  region = "ap-south-1"
}