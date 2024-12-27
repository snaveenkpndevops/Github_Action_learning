resource "aws_s3_bucket" "my_s3" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
  }
}