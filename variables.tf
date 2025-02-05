variable "region" {
  description = "Region to deploy infrastructure"
  default     = ""
}

variable "AMI" {
  description = "AMI"
  default     = "" #provided in the .tfvars file
}

variable "number_of_instance" {
  description = "number of instances to be created"
  type = number
  default     = 2 
  #can be overridden from the .tfvars file
}

variable "key_name" {
  description = "specify key to be used"
  default     = "" #should be specified in .tfvars file
}

variable "instance_type" {
  description = "Specify instance type"
  default     = "t2.micro" #can be overridden from the .tfvars file
}