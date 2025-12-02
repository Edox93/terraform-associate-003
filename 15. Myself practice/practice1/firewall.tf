#terraform plan -var-file="prd.tfvars"
provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
  description = "Managed from Terraform"
}

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.app_port
  ip_protocol       = "tcp"
  to_port           = var.app_port
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ssh_port
  ip_protocol       = "tcp"
  to_port           = var.ssh_port
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ftp_port
  ip_protocol       = "tcp"
  to_port           = var.ftp_port
}


variable "sg_ports" {
  type = list(number)
  description = "list of ingress ports"
  default = [ 8200,8201,8300,9200,9500 ]
}

resource "aws_security_group" "dynamicsg" {
  name = "dynamic-sg"
  description = "INgress for Vault"

#  dynamic "ingress" {
#    for_each = var.sg_ports
#    content {
#      from_port = ingress.value
#      to_port = ingress.value
#      protocol = "tcp"
#      cidr_blocks = ["0.0.0.0/0"]
#    }
#  }

#for easy reding
  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port   # iterator
    content {
      from_port = port.value
      to_port =  port.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

}
