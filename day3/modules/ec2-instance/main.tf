provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = var.ami-id
  instance_type = var.instance-type
  subnet_id     = var.subnet-id
  key_name      = "docker-key"
  tags = {
    Name = "Terraform-Linux-Instance"
  }
}
