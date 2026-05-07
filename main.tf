# 1. Provider Versioning
terraform {
#   required_version = "~> 1.5" # Pins the Terraform CLI version

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Pins the AWS provider to version 5.x
    }
  }
}

# 2. Provider Configuration (No access keys here!)
provider "aws" {
  region = var.region
  # Authentication is handled automatically via IAM Roles or Env Vars
}

# 3. EC2 Instance Resource
resource "aws_instance" "example" {
  ami           = var.ami_id # Update with a valid AMI for your region
  instance_type = var.instance_type
  count = 1

  tags = {
    Name = "Terraform-Demo-Instance.${count.index}"
  }
}
