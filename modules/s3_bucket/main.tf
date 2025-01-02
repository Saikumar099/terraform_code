resource "aws_s3_bucket" "test_bucket" {
    bucket = var.bucket_name
    
    tags = var.tags
}

resource "random_id" "bucket_suffix" {
  byte_length = 8
}