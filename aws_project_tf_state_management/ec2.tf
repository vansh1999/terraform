
resource "aws_instance" "terraform_aws_instance" {
  
  # count = 3

  # use variable
  ami = var.ami

  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

