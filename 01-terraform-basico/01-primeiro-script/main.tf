provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket-98840098801" {
  bucket = "my-tf-test-bucket-98840098801"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
    Owner       = "Tuany Fortunato"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.my-test-bucket-98840098801.id
  acl    = "private"
}