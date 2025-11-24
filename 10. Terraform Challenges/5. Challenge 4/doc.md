# Requirement - 1
Clients want a code that can creae IAM user in AWS account with following syntax

admin-user-{account-numbt-of-aws}
example:
admin-user-12345
admin-user-2434


# Requirement - 2
Clients wants to have a logic thaht will show names of ALL users in AWS account in the output.

# Requirements - 3
Along with list of users in AWS, client also want Terraform to show Total numbet of users in AWS.

# Hint 1 - Data Sources
Data Sources allows us to dynamically fetch information from the infrastructure resource of other state backends

You can try to dynamically fetch information like AWS Account ID, User names using Data Sources.

# Hint 2 - Functions
To calculate number of users is outside scope of Data source

You need to make use of Terraform Function that can calculate total number of users and output it
