1. Which of the following best describes the primary use of Infrastructure as Code (IaC)?
# the ability to programmatically deploy and configure resources

2. True or False? The terraform graph command can be used to generate a visual representation of a configuration or execution plan.
# True

3. If supported by your backend, Terraform will lock your state for all operations that could write state. What purpose does this serve?
# This prevents others from acquiring the lock and potentially corrupting your state.

4. Which of the following code snippets will properly configure a Terraform backend?
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "btk"
 
  workspaces {
    name = "bryan-prod"
  }
 }
}

5. You are using HCP Terraform to manage a new data analytics environment for your organization. You have decided to use Sentinel to enforce standardization and security controls. At what step are the Sentinel policies enforced during a run?
# after the plan, run tasks, cost estimation phases but before the apply phase

6. You have declared a variable named db_connection_string inside of the app module. However, when you run a terraform apply, you get the following error message:

Error: Reference to undeclared input variable
on main.tf line 35:
4: db_path = var.db_connection_string
 
An input variable with the name "db_connection_string" has not been declared. This variable can be declared with a variable "db_connection_string" {} block.
Why would you receive such an error?
# since the variable was declared within the module, it cannot be referenced outside of the module

11. True or False? In both Terraform Community and HCP Terraform, workspaces provide similar functionality of using a separate state file for each workspace.
# True

15. You work for a retail organization that has multiple peak seasons throughout the year. During those peak seasons, your applications need to be scaled up quickly to handle the increased demand. However, the deployment of application servers is manual and new servers are only deployed when problems are reported by users.
How can you reduce the effort required to deploy new resources, increase the speed of deployments, and reduce or eliminate the negative experiences of your customers?
# Develop code that provisions new application servers programmatically. Use monitoring software to trigger a pipeline that deploys additional servers during periods of increased demand.

16. You are working on updating your infrastructure managed by Terraform. Before lunch, you update your configuration file and run a terraform plan to validate the changes. While you are away, a colleague manually updates a tag on a managed resource directly in the console (UI).
What will happen when you run a terraform apply?
# Before applying the new configuration, Terraform will refresh the state and recognize the manual change. It will update the resource based on the desired state as configured in the Terraform configuration. The manual change will no longer exist.

