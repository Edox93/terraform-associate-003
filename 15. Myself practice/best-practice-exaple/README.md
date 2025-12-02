
```
.
├── provider.tf       # Terraform and provider configuration
├── data.tf          # Data sources (VPC, AMI lookups)
├── security.tf      # Security groups and firewall rules
├── compute.tf       # EC2 instances
├── network.tf       # Elastic IPs and associations
├── variables.tf     # Input variable definitions
├── locals.tf        # Local computed values
├── outputs.tf       # Output definitions
├── terraform.tfvars # Variable values
├── user_data.sh     # EC2 bootstrap script
└── README.md        # This file
```

## Benefits of This Structure

1. **Easy Navigation** - Find resources by logical category
2. **Better Collaboration** - Multiple team members can work simultaneously
3. **Reduced Merge Conflicts** - Changes isolated to specific files
4. **Clear Dependencies** - Resource relationships are obvious
5. **Easier Maintenance** - Update security rules without touching compute

## Usage

```bash
terraform init
terraform plan
terraform apply
```

## File Organization Rules

- `provider.tf` - Always first file to check for provider config
- `data.tf` - All data sources in one place
- `security.tf` - Security groups, NACLs, IAM roles/policies
- `compute.tf` - EC2, ASG, launch configs
- `network.tf` - VPC, subnets, EIPs, route tables
- `variables.tf` - Input variables only
- `locals.tf` - Computed/derived values
- `outputs.tf` - All outputs
- `*.tfvars` - Variable value assignments