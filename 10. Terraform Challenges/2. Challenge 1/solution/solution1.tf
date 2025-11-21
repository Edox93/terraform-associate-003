/*
# Before
provider "aws" {
    version = "~> 2.54"
    region = "us-east-1"
    access_key = ""
    secret_key = ""   stor securely for example via aws-cli

}

provider "digitalocean" {}   change it beacus is not official provide

terraform {
  required_version = "0.12.31"  first download old terraform binary to run, after delete old version
}

resource "aws_eip" "kplabs_app_ip" {
  vpc = true   change to domain = vpc , after delete lock file and run again terraform init
}

*/

provider "aws" {
  version    = "~> 2.54"
  region     = "us-east-1"
}


terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
    }
  }
}


resource "aws_eip" "kplabs_app_ip" {
  domain = vpc
}

