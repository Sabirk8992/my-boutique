terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Local state for now — intentional, this is a learning step.
  # Remote state (S3 + DynamoDB lock) is its own later exercise.
}

provider "aws" {
  region = "us-west-2"
}
