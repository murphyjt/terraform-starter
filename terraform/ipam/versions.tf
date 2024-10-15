terraform {
  cloud {
    workspaces {
      tags = ["networking"]
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.71"
    }
  }
}
