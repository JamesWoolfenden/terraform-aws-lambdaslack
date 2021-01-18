terraform {
  required_providers {
    aws = {
      version = "3.24.1"
      source  = "hashicorp/aws"
    }

    archive = {
      version = "2.0.0"
      source  = "hashicorp/archive"

    }

    null = {
      version = "3.0.0"
      source  = "hashicorp/null"
    }

  }
}
