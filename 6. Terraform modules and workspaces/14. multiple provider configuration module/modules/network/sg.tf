terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
        configuration_aliases = [ aws.prd ]
    }
  }
}

resource "aws_security_group" "dev" {
    name = "dev-sg"
}
resource "aws_security_group" "prd" {
    name = "prd-sg"
    provider = aws.prd

}