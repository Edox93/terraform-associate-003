provider "aws" {
    version = "~> 2.54"
    region = "us-east-1"
    access_key = ""
    secret_key = ""

}

provider "digitalocean" {}

terraform {
  required_version = "0.12.31"
}

resource "aws_eip" "kplabs_app_ip" {
  vpc = true
}

