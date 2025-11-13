provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["../../aws.key"]
  profile                  = "customprofile"
}


resource "aws_instance" "myec2" {
  ami           = "ami-04e5276ebb8451442"
  instance_type = "t3.micro"
  key_name      = "terraform-003-key"
  vpc_security_group_ids = ["sg-0edc62fe39293804d"]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("../../terraform-003-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install nginx -y",
      "sudo systemctl start nginx",
    ]
  }
}