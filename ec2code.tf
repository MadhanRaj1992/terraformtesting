terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider updated
provider "aws" {
  region     = "us-east-1"
}

locals {
  common_tags = {
    owner = "Madhan"
    dept  = "test"
  }
}

resource "aws_instance" "myec2one" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  tags          = local.common_tags
}
