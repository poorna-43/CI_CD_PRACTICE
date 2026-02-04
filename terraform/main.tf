provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "site" {
  bucket = "your-unique-bucket-name"
}

resource "aws_s3_bucket_website_configuration" "site" {
  bucket = aws_s3_bucket.site.id

  index_document {
    suffix = "index.html"
  }
}
