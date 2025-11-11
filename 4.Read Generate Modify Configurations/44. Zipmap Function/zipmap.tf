provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_iam_user" "lb" {
  name = "demo-user.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}

/*
#Before
name = [
    "iamuser.0",
    "iamuser.1",
    "iamuser.2",
]

arns = [
  "arn:aws:iam::701544682907:user/system/demo-user.0",
  "arn:aws:iam::701544682907:user/system/demo-user.1",
  "arn:aws:iam::701544682907:user/system/demo-user.2",
]
*/

output "zipmap" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
  /*
#After
zipmap = {
  "demo-user.0" = "arn:aws:iam::701544682907:user/system/demo-user.0"
  "demo-user.1" = "arn:aws:iam::701544682907:user/system/demo-user.1"
  "demo-user.2" = "arn:aws:iam::701544682907:user/system/demo-user.2"
}
  */
}


