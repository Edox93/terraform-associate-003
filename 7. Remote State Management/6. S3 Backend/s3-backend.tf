terraform {
    backend "s3" {
      bucket = "edox-tf-bucket"
      key = "terraform.tfstate"
      region = "us-east-1"
      use_lockfile = true # for local and single users
    }
}