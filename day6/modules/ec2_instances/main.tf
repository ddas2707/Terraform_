provider "aws" {
  region = "ap-south-1"
}

variable "ami_id" {
  type        = string
  description = "value of ami id"
  //default     = "ami-0c5204531f799e0c6"
}

variable "instance_type" {
  type        = string
  description = "value of instance type"
  //default     = "t2.micro"

}

resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "Terraform-EC2-Instance"
  }

}
