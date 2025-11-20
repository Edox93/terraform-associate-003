# Till now, we have been managing Terraform through CLI
Although this approach is decent, we should also be aware that there is a GUI based offering that is available.

# HCP Terraform
It manages Terraform runs in a consistent and reliable environment with various features like access controls, private registry form sharing modules, policy controls and others.



# In HCP Not Everithing is Free
HCP Terraform isn not entirely free. Depending on the usage and features needed, there are multiple pricing plans

hosted service URL: https://app.terraform.io

# 1 - Organization in HCP
Organizations are a shared space for one or more teams to collaborate on workspaces

# Point to not Organizations
HCP Terraform managers plans and billing at the organization level.
Each HCP terraform user can belong to multiple organizations, which might subscribe to different biling plans.

# 2 - Workspace
HCP Terraform manages infrastructure collections with workspaces instead of directories

# 3 - Projects
You can structure your projects based on your organization's resource usage and ownership patterns, such as teams, business units, or services
With HCP Terraform Standard Edition, you can give teams access to groups of workspaces using projects.

# Workspace and Configuration Files

The Terraform configuration file (sample.tf) is not directly uploded to a workspace
You should link workspace to appropriate repo

Instead, workspace is connected to GitHub repository where it can fetch  code from.

# Component           Local                               HCP Terraform
teraform config     on disk                              in linked repo or periodicaly uploaded via API/CLI
Variable values     As .tfvars                           in workspace
                    As CLI args
                    Or in shell env
State               On disk or in remote backend         In workspace
Creds and secrets   In shell env or entered at promts    In workspace, stored as sensitive vars




