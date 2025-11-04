# Wrong type to call not official provider
#provider "digitalocean/digitalocean" {
#  
#}
# Error: Invalid provider local name

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  
}
