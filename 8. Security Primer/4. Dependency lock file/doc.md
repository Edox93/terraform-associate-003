# Revising the Basics
Provider Plugins and Terraform are managed independently and have different release cycle

# Understanding the Challenge
Ther AWS code written in Terraform is working perfectly well with AWS Plugin v1
It can happen that same code might have some issues with newer AWS plugins

# Versionb Dependencies
Version constraints within the configuration itself determine which versions of dependencies are potentially compatible

After selecting a specific version of each dependency Terraform remembers the decisions it made in a dependency lock file so that it can (by default ) make the same decisions again in future

# Default behaviour
What happens if you update the TF file with version that does not match the terraform.locl.hcl ?

example:

demo.tf
        source = "hashicorp/aws"
        version = "~> 4.0"

.terraform.lock.hcl
        version     = "4.67.0"
        constraints = "~> 4.0"

demo.tf
        # chage to
        source = "hashicorp/aws"
        version = "4.60"

# You will see error        
Error: Failed to query avilable provider packages
locked provider
must use terraform init -upgrade

# Point to Node
When installing a particicular provider for the firt time, Terraform will pre-populate tha hashes value with any checksums that are covered by the provider developer's cryprtographic signature, which usually covers all of the available packages for thaht provider version accross all supported platforms.

# Point to Note
At present, the dependency lock file tracks only provider dependencies,

Terraform does not remember version selections for remote modules, ans so Terraform will always select the newest available module version that meet the specified version constraints.