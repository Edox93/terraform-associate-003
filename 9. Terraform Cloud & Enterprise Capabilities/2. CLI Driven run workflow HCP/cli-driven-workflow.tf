terraform {
  cloud {
    organization = "edox"

    workspaces {
      name = "cli-driven-workspace"
      
    }
    token = ""
  }
}

resource "aws_security_group" "allow_tlls" {
    name = "allow_tls"
  
}