resource "aws_s3_bucket" "this" {
  bucket = "${var.project_name}-bucket-${random_id.id.hex}"
}

resource "random_id" "id" {
  byte_length = 4
}

resource "aws_s3_bucket_server_side_encryption_configuration" "enc" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}
