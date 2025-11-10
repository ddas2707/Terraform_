# this backend configuration is implement simple backend mechanism with s3 bucket
# terraform {
#   backend "s3" {
#     bucket = "dhrub-s3-bucket"
#     key    = "day4/terraform.tfstate"
#     region = "ap-south-1"
#   }
# }



# this backend configuration is implement backend mechanism with dynamodb table for locking
terraform {
  backend "s3" {
    bucket         = "dhrub-s3-bucket"
    key            = "day4/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}


