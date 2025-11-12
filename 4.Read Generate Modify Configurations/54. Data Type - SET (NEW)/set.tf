/*
variable "my-list" {
    type = list
    default = ["hello","world","hello"]
}

output "mylist" {
    value = var.my-list
}
*/


variable "my-set" {
    type = set(string)
    //type = set  # set requires type of element
//    default = ["alice","bob","john"]
    default = ["alice","bob","alice"]
}

output "myset" {
    value = var.my-set
}

/* In case of set with non unique elements
  + myset = [
      + "alice",
      + "bob",
    ]
*/ 