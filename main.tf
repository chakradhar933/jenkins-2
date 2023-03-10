terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "instance-tf-2"
  }
}