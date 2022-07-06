/*terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAXCYJVE5P33F4JXXY"
  secret_key = "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"
}

variable "nameIAM" {
  type = list
  default = ["ec2one", "ec2two", "ec2three"]
}

resource "aws_iam_user" "lb" {
  name = var.nameIAM[count.index]
  path = "/system/"
  count = 3
}
*/
