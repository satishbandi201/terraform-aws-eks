terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 6.13.0, < 7.0.0"
    }
  }

  backend "s3" {
    bucket = "satish84s-remote-state-dev"
    key    = "roboshop-dev-eks"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
