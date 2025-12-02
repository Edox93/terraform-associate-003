output "instance_ids" {
  description = "IDs of created EC2 instances"
  value       = aws_instance.web_server[*].id
}

output "instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = aws_instance.web_server[*].public_ip
}

output "instance_private_ips" {
  description = "Private IP addresses of EC2 instances"
  value       = aws_instance.web_server[*].private_ip
}

output "elastic_ips" {
  description = "Allocated Elastic IP addresses"
  value       = var.create_eip ? aws_eip.web_eip[*].public_ip : []
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.web_sg.id
}

output "security_group_name" {
  description = "Name of the security group"
  value       = aws_security_group.web_sg.name
}

output "instance_details" {
  description = "Detailed information about instances"
  value = {
    for idx, instance in aws_instance.web_server : idx => {
      id         = instance.id
      public_ip  = instance.public_ip
      private_ip = instance.private_ip
      eip        = var.create_eip ? aws_eip.web_eip[idx].public_ip : null
    }
  }
}