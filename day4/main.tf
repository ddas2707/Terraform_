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

resource "aws_dynamodb_table" "terraform-lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
