provider "aws" {
  region = "us-east-1"
}

# S3 bucket to demonstrate CI/CD deployment
resource "aws_s3_bucket" "cicd_demo" {
  bucket = "ronhoward-cicd-demo-bucket"
}

resource "aws_s3_bucket_versioning" "cicd_demo" {
  bucket = aws_s3_bucket.cicd_demo.id
  versioning_configuration {
    status = "Enabled"
  }
}
