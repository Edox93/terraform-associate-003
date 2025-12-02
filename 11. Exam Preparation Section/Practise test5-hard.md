Based on the following configuration file,  will the data block request that Terraform must read from a given data source and export the result so that they can be used as part of resource creation?

resource "aws_instance" "web" {
  ami           = data.aws_ami.windows.id
  instance_type = "t3.micro"
 
  tags = {
    Name = "HelloWorld"
  }
}
# Answer: True
# Explain: https://www.terraform.io/language/data-sources

Enterprise Corp has 3 environments named DEV, QA, and PROD
The Security team has asked for complete segregation between these environments including the backend, and also configurations since there will be different set of resources in each environments.
What is the approach to architect the terraform code to facilitate that
# Answer: Create a separate set of folders. Each one will be associated with a specific environment.

What are the OS that are supported by Terraform Enterprise?
# Answer
1. Ubuntu
2. Oracle Linux
3. Red Hat Enterprise Linux
4. CentOS
5. Amazon Linux
6. Debian


Matthew wants to import a local module named database.
Which of the following configuration parameter can be used?
# Answer: 
1. module "db" { source = "./database"}
2. module "db" { source = "../database"}


Matthew is a DevOps engineer and he has deployed the production infrastructure using Terraform.
He is using a very large configuration file to maintain and update the actual infrastructure.
As the infrastructure has grown to a very complex and large, he has started experiencing slowness when he run runs terraform plan.
What are the options for him to resolve this slowness?
# Answer: 
1. Break large configurations into several smaller configurations that can each be independently applied.
2. Use -refresh=false flag as well as the -target flag with terraform plan in order to work around this

Which among the following Terraform backends support State locking functionality?
# Answer: 
1. S3
2. Consul
3. azurerm

Which data storage among these is supported in Terraform Enterprise?
# Answer: PostgreSQL

Which of the following VCS Providers are supported in Terraform Cloud? (Choose 4)
1. Azure DevOps Services
2. Azure DevOps Server
3. Bitbucket
4. Github

Which of the following files are recommended to be excluded while committing Terraform Code to a Git Repository?
# Answer
1. terraform.tfvars
2. terraform.tfstate

In a Terraform project, before using a new provider, what are the actions that needs to be performed?
# Answer
1. Provider must first be initialized.
2. Provider details must be declared within the terraform configuration

Enterprise Corp needs encryption at rest functionality as part of compliance requirements.
Currently, all the state files are stored in S3 backends.
Is this use-case supported?
# Answer: True

Your DevOps team is collaborating on multiple Terraform workspaces and needs to safely manage secrets such as API tokens and passwords required for infrastructure provisioning.
Based on best practices recommended by HashiCorp, where should your team store these sensitive values? (Select three appropriate locations.)
# Answer:
1. In a terraform.tfvars file that is securely managed and only shared with authorized team members, but not committed to version control
2. Within HashiCorp Vault, a dedicated secrets management tool
3. Using HCP Terraform/Terraform Cloud workspace variables, with the “sensitive” flag enabled

Your company, Example Corp, currently provisions infrastructure using a traditional ticket-based workflow. Employees must submit requests via a service desk ticketing system for any new virtual machines, storage resources, or network changes. The infrastructure team manually reviews, approves, and executes these requests. Recently, Example Corp has struggled to keep up with the increasing demand for cloud resources as more teams adopt cloud-native development practices.
Given this scenario, which two factors best explain how this ticket-driven process can become a bottleneck for rapid infrastructure scaling? (Choose two.)
1. Every infrastructure request requires manual approval and intervention by the operations team, increasing wait times for end-users.
2. As the number of resource requests grows, the operations team must handle a larger volume of tickets, slowing down overall provisioning speed.

