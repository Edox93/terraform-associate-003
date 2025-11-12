provider "aws" {
    region = "us-east-1"
    shared_credentials_files = ["../../aws.key"]
    profile = "customprofile"
}

variable "my-object" {
  type = object({Name = string, userID = number})
}

// {"Name"="Zeal", "userID"=1234}
// {"Name"="Zeal", "userID"="hello"} # wrokg type of object

output "variable_name" {
  value = var.my-object
}