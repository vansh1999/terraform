output "aws_instance_ip" {
  # resource "aws_instance" "terraform_aws_instance"
    value = aws_instance.terraform_aws_instance.public_ip
}

