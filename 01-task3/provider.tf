terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0"
    }
  }
backend "s3" {
  bucket         = "ekscluster5929"
  key            = "k8s-eksctl"
  region         = "us-east-1"
  dynamodb_table = "aws-locking"
}
  
}

provider "aws" {
  # Configuration options
}
