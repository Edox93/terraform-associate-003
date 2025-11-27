# Sentinel
embedded policy-as-code enterprise framework
terraform plan -> sentinel checks -> terraform apply

# Terraform Graph
refers to a visual representation fo the dependency releationships between resources
graph output is DOT format

# Imput Varibales
used t pass certain values from outside of the configuration
var.app_port

# TFVARS
terraform.tfvars file can be used to define value to all the variables
dev.tfvars prd.tfvars and default terraform.tfvars
-var-file="prd.tfvars"

# Declaring Variable Values
ars can be used from variables.tf prd.tfvars environment Vars (TF_VAR_) or command line -var="instance_type=m5.large"
priority:
env var (low)
tfvars file
tfvars.json
any .auto.tfvars or .auto.tfvars.json 
any var -var -var-file  (high)

# Undefined values vars NOT directly result in an error.
# Cannot use some words in var names: count depends_on for_each lifecycle providers source

# Satefile
imput variables not storeg in state
description of output values not stored in state

# Terraform console for test functions and experiment with expressions before integrationf in main code
terraform console max(10,20,30)

# Lock file
to lock specific version f provider in terraform.lock.hcl
to override us terraform init -upgrade

# Implicit dependencies
In this case first will be createated ec2 after lb
resource "aws_eip" "lb"{
    domain = "vpc"
    instance = aws_instance.myec2.id # dependency implicit
}

resource "aws_instance" "myec2" {
    ami = "ami-123"
    instance_type = "t3.micro"
}

# Implicit dependencies depends_on meta-argument
u can use depends_on = [aws_iam_role_policy.example]

# Data sources
allow to fetch/use info defined outsite of terraform
data "aws_instance" "example" {}


# Terraform Enterprise
single sign-on
Auditing
Private Data Center Networking
Clustering

Team and Governance are not available for Terraform Cloud Free (Paid)
Plans:
HCP Free
HCP Standard
HCP Plus
Enterprise

# Secure Variable Storage is available in Terraform Enterprise and Cloud but not in the normal version of Terraform.
# Terrafoprm cloud/ Enterprise comes with a Private Module registry which allow organizations to restrict access based on requirements.

Terraform Cloud provides the feature of Remote State storage
encryption of state file is availables
# Points to Note
In a HCP workspace linked to a VCS repository, runs start automatically when yo merge or commit changes to version control

Workspace linked to one branch of VCS
To protect secret values in HCP you can mark any terraform or environment variable as sensitive data by clicking its sensitive checkbox thath is visible during editig. Marking a variable as sensitive makes it write-only and prevents all users (including you) from viewing its value

# Recreating resource
terraform apply -replace="aws_instance.web"
#in older versions terraform taint

# BENEFITS of IAC Tools
Automation Versioning Reusability

Various Tools available in market
# Terraform
# CloudFormation
# Azure Resource manager
# Google Cloud Deployment Manager

# terraform output
extract value from state file

# Splat expressions
[for o in var.list : o.id]
similar to var.list[*].id
value = aws_iam_user.lb[*].arn

# old splat expression is .*  intead of [*]
value = aws_iam_user.lb.*.name

# Values from list
instance_type = var.size[1]

# Values from map
instance_type = var.type["ap-south-1"]

# Air Gapped Environments
An air gap is a network security measure employed to ensure that a secure computer network is physicaly isolated from unsecured network, such as the public internet.

# dynamic block for repeatapve nested blocks but it make to hard read and maintain

# Terraform uses parallelism to reduce 
github not supported for state file
API CLI is managed thtough API tokens
Terraform uses Parallelism to reduce the time it takes to create the resource, By defautl is 10

# Terraform providrs can installed offline approach for air-gapped systems

terraform and provider NEED NOT havae same major version for compatibility

# sensitive paramater it sores in state file but for output is
sensitive = true

# When state file is Locked
Forbidden run apply or any other command (destroy plan refresh and etc.) or terraform state [psuh rm mv]

# ignore sensitive date by .gitignore

# Not all backends support locking
# Terraform has force-unlock to manually unlcok if failed : terraform force-unlock LOCK_ID [DIR]


# Additional Important Pointers for Exams
# Make sure to complete following videos:
# Lecture 90 - Data Type of Object
# Lecture 114 - Multiple Provider Configuration in Modules
# These are  important from exam perspective