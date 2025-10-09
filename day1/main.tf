provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-02d26659fd82cf299"
  instance_type = "t2.micro"
  subnet_id     = "subnet-01f082dede768aefa"
  key_name      = "docker-key"
  tags = {
    Name = "Terraform-Linux-Instance"
  }
}
 
