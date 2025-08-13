# main.tf

# Define the required provider and its version.
# The 'local' provider allows you to manage local files on the system.
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

# Configure the 'local' provider.
provider "local" {}

# Create a resource of type 'local_file'.
# This resource will create a file named 'hello.txt' with the content "Hello, World!".
resource "local_file" "hello" {
  filename = "hello.txt"
  content  = "Hello, World!"
}
