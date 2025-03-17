terraform {
  required_providers {
    aws = {
        source = "hasicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-east-1"  
    profile = "default"
}

resource "aws_instance" "server1" {
  ami = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
}