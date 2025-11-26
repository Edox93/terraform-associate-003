# Terraform Validate
terraform validate command validates config files in a directory

Requires an initialized working directory with any referenced plugins and modules installed.

terraform plan uses implied validation check.

! if you delete .terraform folder from dir, validate will throw an error: Missing required provider

run validate after check

# Terraform Refresh
terraform refresh command reads the curen seeting frim all managed remote resources and updates The Terraform state to match
It not modify remote objects but modify tfstate
#command is deprecated and because it's unsafe

# Resource type an name serve as an identifier for a given resource and must be unique
resource "aws_instance" "web" {
    ami = "ami-123"
}
aws_instance: resource type
web: local reosurce name
ami: argument name
ami-123: argument value

# Data types
string
numer
bool
list
set : list of unique values
map : list of key/value pair
null
# Array not supported in terraform

# State management commands
list : list of 
mv
pull
push
rm 
show

# Debuging
Detailed logs settign is TF_LOG env variable with any value
TRACE EBUG INFO WARN ERROR
TF_LOG_PATH to persist like file

# TErraform import
Allow importing existing infrastructure to terraform
Authomatic code generation is supported in newer versions
YOu can use import block to import more then one resource at a time

# Local values
Locals are used whe ypu want to avoid repeating the same expression multiple times

Local values are created by a locals block (plural), but you reference then as attribuets on an object name local singular
Local value can reference values from ohter varables, locals etc.

# Terraform workspace 
It enable us to manage multiple sets of deployments from the same of config files.
fot dif states it use terraform.tfstate.d directory

# Modules
allows us to centralize the resource configuration, an it makes it easier for multiple projects to re-use the code.

Instead of writing code from scratch, we can use modules 
#module can be in diff variety:
github, local paths, terraform registry, s3 buckets, http URLs
To ref module you need to mae use of module block and source
Local path moules not supported versions
# Root add child modules
resides in th e main woking dir of your terraform configuration, this is the entry point for you your infra definition.
module that has been called by another its child

Child module can use outputs to expose a subset og its resource attributes to a parent module
# Terraform registry module addres syntax
hostname/namespace/name/system

# Functions in Teraform
built-in for combine values
numericL abs ceil floor max min
string: concat replace split join tolower toupper
collection: element keys lenght merge sort slice
filesystem file filebase64 dirname
# Not support for user defined functions
# important functions: lookup, zipmap, index, element, toset, timestamp, file


# Meta arguments
allow to inlcude within the resource block, which allow some details of this standart resource, behaviour to be customized on a per-resource bais

# Diff meta arguments
depends_on
count
for_each
lifecycle
provider

# argument for lifecycle
create_before_destroy
prevent_destroy
ignore_changes
replace_triggered_by