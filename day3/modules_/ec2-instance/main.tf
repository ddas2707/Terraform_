provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example1" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
  subnet_id     = var.subnet_id_value
  key_name      = "docker-key"
  tags = {
    Name = "Terraform-Linux-Instance"
  }
}
