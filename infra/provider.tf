terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0.0"
  backend "s3" {}
}


provider "aws" {
  region = var.config.region
  default_tags {
    tags = {
      project     = var.config.projectName
      environment = var.config.environment
    }
  }
}