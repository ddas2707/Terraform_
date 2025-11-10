provider "aws" {
  region = "ap-south-1"
}
# resource "aws_instance" "example2" {
#   instance_type = "t2.micro"
#   ami           = "ami-02d26659fd82cf299"
#   subnet_id     = "subnet-01f082dede768aefa"
# }
resource "aws_s3_bucket" "s3-bucket" {
  bucket = "dhrub-s3-bucket"
}
