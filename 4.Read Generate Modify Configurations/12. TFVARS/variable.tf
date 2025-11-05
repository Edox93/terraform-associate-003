variable "vpn_ip" {
    description = "VPN IP addres by environment tfvars"
    default = "55.20.30.50/32"
}

variable "app_port" {
    default = "30057"
}

variable "ssh_port" {
    default = "1222"
}

variable "ftp_port" {
    default = "1221"
}
