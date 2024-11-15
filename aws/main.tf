terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}


resource "aws_s3_bucket" "terraform_aws_s3" {
  bucket = "my-bucket-random-id-1923685"

  tags = {
    name = "my-bucket-random-id-1923685"
  }
}


resource "aws_instance" "terraform_aws_instance" {
  
  count = 3

  # get using launch instance , remains same
  ami = "ami-012967cc5a8c9f891"

  instance_type = "t2.micro"

  tags = {
    Name = "my_instance"
  }
}



