provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_iam_user" "lb" {
  name = "iamuser${count.index}"
  count = 3
  path = "/system/"
}

output "iam_users" {
  value = aws_iam_user.lb[*].name
}

output "iam_arn" {
  value = aws_iam_user.lb[*].arn
}

/*

Outputs:

iam_arn = [
  "arn:aws:iam::701544682907:user/system/iamuser0",
  "arn:aws:iam::701544682907:user/system/iamuser1",
  "arn:aws:iam::701544682907:user/system/iamuser2",
]
iam_users = [
  "iamuser0",
  "iamuser1",
  "iamuser2",
]

*/