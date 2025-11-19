variable "sensitive_content" {
  sensitive = true
  default = "f4sdf4ds5passw0rd"
}

resource "local_file" "foo" {
  content = var.sensitive_content
  filename = "password.txt"
}

# or use

resource "local_sensitive_file" "foo_sensitive" {
  content = "f4sdf4ds5passw0rd"
  filename = "password_sensitive.txt"
}