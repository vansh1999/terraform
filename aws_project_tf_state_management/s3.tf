resource "aws_s3_bucket" "terraform_aws_s3_bucket" {

  bucket = var.bucket_name

  tags = {
    name = var.bucket_name
  }
}


resource "aws_s3_bucket" "state_bucket" {

  bucket = var.state_bucket_name

  tags = {
    name = var.state_bucket_name
  }

}

