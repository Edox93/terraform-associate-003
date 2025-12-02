Is it recommended to use Terraform Provisioners extensively, or should it be used minimally?
# Answer: minimally

James has set the following environment variable:
TF_LOG_PATH=./terraform-debug.log
However, even after running multiple Terraform operations, the logs are not stored in the terraform-debug.log file.
What is the issue?
# Answer: Set the TF_LOG environment variable
# Explain: Even when TF_LOG_PATH is set, TF_LOG must be set in order for any logging to be enabled.

There is a need to install nginx on the remote machine. Matthew has decided to make use of Terraform provisioner. The command to install nginx is as follows:
yum -y install nginx
# Answer:
provisioner "remote-exec" {
    inline = [
      "yum -y install nginx"
    ]
  }
# Explain: https://www.terraform.io/docs/provisioners/remote-exec.html

Which of the features are unique to Terraform Cloud Business Plan?
# Answer: Audit Logging, Clustering Functionality, Private Network Connectivity

Matthew is using the Terraform Cloud Free version. Which of the below features is not supported in free version?
# Answer: Team mamagement

Terraform supports which of the following formats for it's configuration files (Choose 2)
# Answer: JSON, HCL

There is a requirement to rename a resource block in Terraform with the intention of retaining the existing object but tracking it under a new name
# Answer: terraform state mv

Matthew has configured AWS provider within his terraform code. 
Where will be the associated plugins for that provider be stored?
# Answer: .terraform/providers

What are the things that the terraform import command requires to run? (Choose 2)
# Answer: Resource from ID, Resource address

Matthew has created a new VPC module and he wants to publish the module to the Terraform registry.
What are the requirements to publish the module to the Public Registry?
# Answer: 
1. Module repositories must use this three-part name format, terraform-provider-name
2. elease tag names must be a semantic version, which can optionally be prefixed with a v
3. The module must be on GitHub and must be a public repo.



