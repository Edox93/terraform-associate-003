##### Incorrects #####################

1. True or False? Instead of relying on a state file, you can configure Terraform to check cloud resources on each run to ensure that the real-world resources match the desired state.
# Answer: False
# Explanation
This choice is correct. Terraform requires a state file to store information about the current state of infrastructure resources. By inspecting this state file, Terraform can determine the necessary changes to bring the real-world resources in line with the desired state specified in the configuration files. Without a state file, Terraform would not be able to perform this validation.

------------------------------------------------------------------------------------------------------------------------------

2. In Terraform, most resource dependencies are handled automatically. Which of the following statements best describes how Terraform resource dependencies are handled? 
# Answer: Terraform analyzes any expressions within a resource block to find references to other objects and treats those references as implicit ordering requirements when creating, updating, or destroying resources.

------------------------------------------------------------------------------------------------------------------------------

3. True or False? The following code is an example of an implicit dependency in Terraform
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
 
resource "aws_ebs_volume" "data" {
  availability_zone = "us-west-2a"
  size              = 1
 
  tags = {
    Name = "data-volume"
  }
}
 
resource "aws_volume_attachment" "attach_data_volume" {
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.data.id
  instance_id = aws_instance.web.id
}
# Answer: True
# Explanation
The code snippet provided shows an implicit dependency in Terraform. The resource "aws_volume_attachment" "attach_data_volume" depends on both "aws_ebs_volume.data" and "aws_instance.web" resources without explicitly specifying the dependency using the "depends_on" attribute. Terraform automatically detects this relationship and ensures that the dependencies are resolved in the correct order during the execution.

------------------------------------------------------------------------------------------------------------------------------

4. In the following code snippet, the type of Terraform block is identified by which string?
resource "aws_instance" "db" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}
# Answer: resource
# Explanation
The type of Terraform block is identified by the keyword "resource" in this code snippet. This keyword indicates that a new AWS instance resource is being defined.

------------------------------------------------------------------------------------------------------------------------------

5. Which of the following variable declarations is going to result in an error?
# Answer
variable "example" { 
  description = "This is a variable description" 
  type        = list(string) 
  default     = {}
}
# Explanation for list the default brackets are []  not {}

------------------------------------------------------------------------------------------------------------------------------

6. After many years of using Terraform Community (Free), you decide to migrate to HCP Terraform. After the initial configuration, you create a workspace and migrate your existing state and configuration. What Terraform version would the new workspace be configured to use after the migration?
# Answer: 
the same Terraform version that was used to perform the migration
# Explaination: 
The new workspace in HCP Terraform will be configured to use the same Terraform version that was used to perform the migration. This ensures compatibility and consistency with the existing state and configuration.

------------------------------------------------------------------------------------------------------------------------------

7. You and a colleague are working on updating some Terraform configurations within your organization. You need to follow a new naming standard for the local name within your resource blocks. However, you don't want Terraform to replace the object after changing your configuration files.
As an example, you want to change data-bucket to now be prod-encrypted-data-s3-bucket in the following resource block:
resource "aws_s3_bucket" "data-bucket" {
  bucket = "corp-production-data-bucket"
 
  tags = {
    Name        = "corp-production-data-bucket"
    Environment = "prod"
  }
}
# Answer: terraform state mv aws_s3_bucket.data-bucket aws_s3_bucket.prod-encrypted-data-s3-bucket
# Explaination
The correct command to update the local name without replacing the existing resource is to use the `terraform state mv` command. This command will move the existing state object to the new local name specified, ensuring that Terraform does not replace the resource.

------------------------------------------------------------------------------------------------------------------------------

8. Please fill the blank field(s) in the statement with the right words.
You are using HCP Terraform to store your state file. Before you can use HCP Terraform, what command should run to obtain and save credentials for the remote backend?
# Answer: terraform login
# Explaination 
If you entered a valid command but got this wrong, you're all set. Udemy only lets me include one correct answer, even though there could be multiple ways to answer the question.
The terraform login command can automatically obtain and save an API token for HCP Terraform.

------------------------------------------------------------------------------------------------------------------------------

9. Provider dependencies are established in various ways. Choose the correct provider dependencies from the list below: (select three)
1. Existence of any resource instance belonging to a particular provider in the current state.
2. Explicit use of a provider block in configuration, optionally including a version constraint. 
3. Use of any resource block or data block in the configuration, belonging to a particular provider



10. When you add a new module to a configuration, Terraform must download it before it can be used. What two commands can be used to download and update modules? (select two)
# Answer: 
1. terraform get to download modules from the module
2. terraform init to initialize a working directory containing Terraform configuration files. It downloads any modules specified in the configuration.
Feature               terraform get       terraform init  
Downloads modules     ✅ Yes                ✅ Yes 
Downloads providers   ❌ No                 ✅ Yes
Initializes backend   ❌ No                 ✅ Yes
Speed                 Faster                Slower(more comprehensive)

------------------------------------------------------------------------------------------------------------------------------

11. What Terraform command can be used to manually unlock the state for the defined configuration?
# Answer: terraform force-unlock

------------------------------------------------------------------------------------------------------------------------------

12. Please fill the blank field(s) in the statement with the right words.
To list all resources in the current state, you can use the command __
# Answer: terraform state list

------------------------------------------------------------------------------------------------------------------------------

13. You are using an HCP Terraform workspace linked to a GitHub repo to manage production workloads in your environment. After approving a merge request, what default action can you expect to be triggered on the workspace?
# Answer: A speculative plan will be run to show the potential changes to the managed environment and validate the changes against any applicable Sentinel policies
# Explanation; After approving a merge request, HCP Terraform will run a speculative plan to show the potential changes that will be applied to the managed environment. This allows users to review and validate the changes against any applicable Sentinel policies before applying them.

------------------------------------------------------------------------------------------------------------------------------

14. True or False? When using the Terraform provider for Vault, the tight integration between these HashiCorp tools provides the ability to mask secrets in the state file.
# Answer: False
# Explanation
Correct. The statement is false because the tight integration between Terraform and Vault does not automatically mask secrets in the state file. Developers need to implement secure practices to handle secrets effectively.

------------------------------------------------------------------------------------------------------------------------------

15. What feature of HCP Terraform allows you to publish and maintain a set of custom modules that can only be used within your organization?
# Answer: private registry
# Explanation
The private registry feature in HCP Terraform allows users to publish and maintain custom modules within their organization, providing a secure and controlled environment for sharing infrastructure configurations.