# Configure the AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # This configuration tells Terraform to use the Terraform Cloud backend
  cloud { 
    organization = "auth-learning"
    workspaces { 
      name = "api-test-vcs" 
    } 
  }
}

provider "random" {}

resource "random_pet" "name" {
  length    = 10
  separator = "-"
}
