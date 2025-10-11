provider "aws" {
  region = "ap-south-1"
}

module "ec2-instance" {
  source              = "./modules_/ec2-instance"
  ami_value           = "ami-02d26659fd82cf299"
  instance_type_value = "t2.micro"
  subnet_id_value     = "subnet-01f082dede768aefa"
}
