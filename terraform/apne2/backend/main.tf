resource "aws_s3_bucket" "my-e-commerce-terraform-state" {
  bucket = "my-e-commerce-terraform-state"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "my-e-commerce-terraform-state-versioning" {
  bucket = aws_s3_bucket.my-e-commerce-terraform-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "my-e-commerce-terraform-state-encryption" {
  bucket = aws_s3_bucket.my-e-commerce-terraform-state.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}