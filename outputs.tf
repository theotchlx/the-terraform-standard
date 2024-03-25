/*
  This is where you define output values that you want to expose from your root module.
  These outputs can be useful for consuming information from the Terraform state or passing values to other systems.
  All outputs should have a description!
*/

// Module outputs
output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value = module.clear-purpose-name.my_output
}