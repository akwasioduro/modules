resource "aws_s3_bucket" "terrabuck" {
  bucket = "kwace-sf-buck"

  tags = {
    Name        = "terraformbucket"
  }
}


resource "aws_s3_bucket_public_access_block" "terrabuck" {
  bucket = aws_s3_bucket.terrabuck.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


