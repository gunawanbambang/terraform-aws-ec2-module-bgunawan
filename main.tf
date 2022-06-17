locals {
  project_name = "stage"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

data "aws_vpc" "default" {
  default = true
}