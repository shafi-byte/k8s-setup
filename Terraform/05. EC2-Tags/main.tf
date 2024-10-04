terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Create Ec2 Instance
resource "aws_instance" "demo" {
  ami           = "ami-0ad21ae1d0696ad58"
  instance_type = "t2.micro"

  # Create tags
  tags = {
    Name = "web-server" # <-----------------
  }
}