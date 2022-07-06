/*
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXCYJVE5P33F4JXXY"
  secret_key = "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"
}


resource "aws_instance" "myec2two" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  provisioner "local-exec" {
  command = "echo ${aws_instance.myec2two.public_ip} >> public_ip.txt"
  }
}
  #key_name = "testkp"

/*
  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./testkp.pem")
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1",
       "sudo systemctl start nginx"
    ]
  }
}
*/
