terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "81s-remote-state-dev-407"
    key    = "expense-bastion"
    region = "us-east-1"
    dynamodb_table = "81s-locking-dev-408"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
