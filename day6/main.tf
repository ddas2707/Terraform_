provider "aws" {
  region = "ap-south-1"
}

variable "ami_id" {
  type        = string
  description = "value of ami id"
}
variable "instance_type" {
  type        = string
  description = "value of instance type"
}

module "ec2_instance" {
  source        = "./modules/ec2_instances"
  ami_id        = var.ami_id
  instance_type = var.instance_type
}
