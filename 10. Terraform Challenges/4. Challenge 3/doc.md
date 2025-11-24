variable "instance_config" {
  type = map
  default = {
    instance1 = {instance_type = "t3.micro", ami = "ami-03a6eaae9938c858c"}
    instance2 = {instance_type = "t3.micro", ami = "ami-053b0d53c279acc90"}
  }
}

1. Based on the values specified in map, EC2 instances should be created accordingly.
2. If ke/value is removed from map, EC2 instance should be destroyed accordingly.

# Hints

# hint 1 - Loop
The requirement indicates that based on key/value specified in ma, the resources should be created and destroyed accordingly.
We eed to use some kind of loops to achieve this

# hint 2 - for_each
If a  resource blocke includes a for_each argument whose value is a map or a set strings,
Terraform creates one instance for each member of that map or set.