# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-0d606956580030350"
resource "aws_security_group" "my_sg" {
  description = "Mannual"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Allow http from internet"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Allow https from internet"
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["172.31.0.0/16"]
    description      = "Allow from private network"
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]
  ingress                = []
  name                   = "manually-created-sg"
  name_prefix            = null
  region                 = "us-east-1"
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-01da5b2f4dd9f1b89"
}
