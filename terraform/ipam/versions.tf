terraform {
  required_version = ">= 1.9.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.71"
    }
  }

  backend "remote" {
    organization = var.tfc_organization_name

    workspaces {
      name = var.tfc_workspace_name
    }
  }
}
