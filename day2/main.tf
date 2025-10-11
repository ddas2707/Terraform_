variable "instance-type" {
  description = "Ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami-id" {
  description = " Ami-id for ec2 instance"
  type        = string
  default     = "ami-02d26659fd82cf299"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = var.ami-id
  instance_type = var.instance-type
  subnet_id     = "subnet-01f082dede768aefa"
  key_name      = "docker-key"
  tags = {
    Name = "Terraform-Linux-Instance"
  }
}

output "public-ip" {
  description = "value of public ip"
  value       = aws_instance.example.public_ip
}

/*other than public ip,we can also print output like 
instance id, private ip and availability zone also. */
