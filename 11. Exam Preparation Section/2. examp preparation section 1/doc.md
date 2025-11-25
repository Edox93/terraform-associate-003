# Interesting Question

Is provider block {..} mandatory to be added as part of your terraform configuration? Yes/No
# In this case i configured region creds via aws cli, so provider block not mandatory,
# Answer: NO

All Terraform configurations must declare which providers they require so that Terraform can install ans use them

A provider block may be omitted if its contens would otherwise be empty.

# !If your plan to explicity add some contents to provider {} like region, credentials, then this block required.
Otherwise, even if you skip, the terraform apply will work fine.

########
# Alias in Providers
alisa can be used for using the smae provider with different configurations for differentc resources

# Point to Note - Providers
It is a good practice to store the creds outside of Terraform configuration, such as in Environment variables.

# Terraform Settings
Terraform Settings are used to configure project-specific Terraform behaviours, such as requiring a minimum Terraform version to apply to your configuration.

# Point to Note
You cannot define configuration releated to regions, Access.Secret keys inside required_provider block
You have to use a provider {} block.

# Terraform init
includes installing provider plugins, backend initialization, copy source module, etc.

# Terraform init -upgrade
install latest module and provider versions allow within configured constrints

# Terraform plan
is used to create an execution plan
state file is not modified

# Saving Plan to file
use -out=File option to save the generated plan to file,which you can use with appla with argument

# Terraform Apply
used to apply the changes required to reach the desired state of configuration
state fie gets modified in the command
can change destroy and provision but NOT import

# Terraform destroy
used to destroy the Terraform-managed infrastructure
infrastructure can be destroyod by apply if resource removed

# Terraform fmt
used to rewrite terraform confi file to a canonical format and style,
-check flag if the input is formatted
-recursive  also process files in subdirectories , bu default only given file or dir