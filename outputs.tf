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

resource "aws_instance" "myec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  instance = aws_instance.myec2.id
  vpc      = true
}

  resource "aws_eip_association" "eip_assoc" {
    instance_id   = aws_instance.myec2.id
    allocation_id = aws_eip.lb.id
  }


  resource "aws_security_group" "allow_tls" {
    name        = "allow_tls"
    description = "Allow TLS inbound traffic"
  }

  resource "aws_security_group_rule" "example" {
    type              = "ingress"
    from_port         = 0
    to_port           = 65535
    protocol          = "tcp"
    cidr_blocks       = ["${aws_instance.myec2.public_ip}/32"]
    security_group_id = "sg-0febbe300b63af7c0"
}

  output "aws_instance" {
  value = aws_instance.myec2.public_ip
}

  output "aws_eip" {
  value = aws_eip.lb
}
*/
