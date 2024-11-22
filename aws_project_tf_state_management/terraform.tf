terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.1"
    }
  }

  backend "s3" {
    bucket = "my-state-bucket-id-345345"
    key = "terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "my-dynamo-db-table"



  }

}

