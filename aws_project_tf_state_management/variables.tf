variable "ami" {
	default = "ami-012967cc5a8c9f891"
}

variable "instance_type" {
	default = "t2.micro"
}

variable "instance_name" {
  default = "created from terraform"
}

variable "bucket_name" {
  default = "my-bucket-random-id-985634"
}

variable "state_bucket_name" {
  default = "my-state-bucket-id-345345"
}

variable "state_table_name" {
  default = "my-dynamo-db-table"
}

variable "aws_region" {
  default = "us-east-1"
}

