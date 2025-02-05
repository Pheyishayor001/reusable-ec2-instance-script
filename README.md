# Terraform AWS EC2 Provisioning

This Terraform script provisions EC2 instances on AWS.

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI configured (`aws configure`)
- An existing EC2 key pair in AWS

## Configuration

Edit the `terraform.tfvars` file:

region = "" # Required AWS region  
instance_type = "" # Default: t2.micro  
AMI = "" # Required AMI ID  
number_of_instance = 1 # Default: 1
key_name = "" # Required key pair name (without .pem)

USAGE:
Initialize terraform: terraform init

Plan deployment: terraform plan

Apply configuration: terraform apply --auto-approve

Destroy resource (when needed): terraform destroy --auto-approve

Notes
Ensure the specified AMI is available in the selected region.
The key_name must exist in your AWS account.
