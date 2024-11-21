resource "aws_dynamodb_table" "terraform_aws_dynamo_table" {
  name = var.state_table_name

  # generate a hask lock key
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"

  tags = {
    name = var.state_table_name
  }

}


