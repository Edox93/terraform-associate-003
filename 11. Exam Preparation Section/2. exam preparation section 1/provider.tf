#provider "aws" {}

resource "aws_iam_user" "lb" {
  name = "test-aws-user"
}

# In this case i configured region creds via aws cli, so provider block not mandatory