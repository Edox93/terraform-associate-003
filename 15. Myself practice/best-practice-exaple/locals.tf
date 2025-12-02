locals {
  name_prefix = "${var.project_name}-${var.environment}"
  
  common_tags = merge(
    {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      CreatedAt   = timestamp()
    },
    var.additional_tags
  )

  instance_ids = aws_instance.web_server[*].id
  
  security_group_rules_count = length(var.ingress_rules)
}