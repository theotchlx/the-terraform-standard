# Defines the input variables of the root module, which can be passed in the child modules
# All variables should have a description, and a type!


### CREDENTIALS ###
/*
  Project_id and credentials_file are defined as environment variables in the root module
  They are declared here to be used.
*/
variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "credentials_file" {
  description = "The path to the GCP service account credentials file"
  type        = string
}
###################

### PROVIDER VARIABLES ###
variable "region" {
  description = "The region where resources will be created"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone where resources will be created"
  type        = string
  default     = "us-central1-c"
}
##########################

### OTHER STUFF ###
# Defines input variables specific to this module

variable "something" {
  description = "A description of the variable"
  type        = string
  default     = "default value"
}