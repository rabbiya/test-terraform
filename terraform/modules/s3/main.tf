resource "aws_s3_bucket" "env_bucket" {
  bucket = var.bucket_name  # Using the variable for bucket name
  # Default ACL will be private since we are not setting any ACL explicitly
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.env_bucket.bucket

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_object" "dev_env" {
  bucket = aws_s3_bucket.env_bucket.bucket
  key    = "dev/"  # This creates a "folder" but does not add a file.
}
