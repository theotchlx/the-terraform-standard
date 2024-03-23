// In a simple module (only the root module), this file defines resources
// In a complex module (a root module and one or more child modules), this file defines the child modules, and is the main entry point for the module.

// If the project is very complex, you may want to break down this file into multiple files, each defining a different module.

// This is a complex module, with multiple child modules :

module "ec2-instance" {
  source = "./modules/clear-purpose-name"

  // Pass the input variables to the module
  something      = var.something
}

module "sns-service" {
  source      = "./modules/second-module"

  something = var.something  // You don't have to pass all the variables, if they are not declared in the module.
  // You may also directly pass values : something = "value"
}

// Module outputs
output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value = module.clear-purpose-name.my_output
}