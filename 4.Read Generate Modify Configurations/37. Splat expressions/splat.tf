provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}

/*

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

arns = [
  "arn:aws:iam::701544682907:user/system/iamuser.0",
  "arn:aws:iam::701544682907:user/system/iamuser.1",
  "arn:aws:iam::701544682907:user/system/iamuser.2",
]

*/