# Moved block in terraform
moved {
  from = aws_instance.web
  to   = module.servers.aws_instance.web
}

# Yes, child modules can refer to any variable in a parent module

The command terraform destroy is actually just an alias to which command?
# terraform apply -destroy

You need to define a single input variable to support the IP address of a subnet, which is defined as a string, and the subnet mask, which is defined as a number. What type of variable should you use?
# Object

A Terraform module (usually the root module of a configuration) can call other modules to include their resources into the configuration. A module that has been called by another module is often referred to as
# child module

Beyond storing state, what capability can an enhanced storage backend, such as the remote backend, provide your organization?
# execute your Terraform on infrastructure either locally or in HCP Terraform


What is NOT a benefit of using Infrastructure as Code?
# reducing vulnerabilities in your publicly-facing applications

Infrastructure as Code (IaC) offers many benefits to help organizations deploy application infrastructure faster than manually clicking through the console. Which of the following is NOT a benefit of Infrastructure as Code (IaC)?
# eliminates API communication to the target platform

You are managing multiple resources using Terraform running in AWS. You want to destroy all the resources except for a single web server. How can you accomplish this?
# run a terraform state rm to remove it from state and then destroy the remaining resources by running terraform destroy

Please fill the blank field(s) in the statement by writing the appropriate word.
# terraform apply -refresh=false