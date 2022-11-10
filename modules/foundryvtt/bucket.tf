resource "aws_s3_bucket" "foundry_artifacts" {
  bucket        = "foundry-server-artifacts-${terraform.workspace}"
  tags          = local.tags_rendered
}

resource "aws_s3_bucket_cors_configuration" "foundry_artifacts" {
  bucket        = aws_s3_bucket.foundry_artifacts.id
  dynamic "cors_rule" {
    for_each = var.artifacts_bucket_public ? [{}] : []
    content {
      allowed_headers = ["*"]
      allowed_methods = ["GET", "POST", "HEAD"]
      allowed_origins = ["*"]
      max_age_seconds = 3000
    }
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "foundry_artifacts" {
  bucket        = aws_s3_bucket.foundry_artifacts.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_acl" "foundry_artifacts" {
  bucket        = aws_s3_bucket.foundry_artifacts.id
  acl           = var.artifacts_bucket_public ? "public-read" : "private"
}

resource "aws_s3_bucket_lifecycle_configuration" "foundry_artifacts" {
  bucket        = aws_s3_bucket.foundry_artifacts.id
  rule {
    status  = "Enabled"
    id      = "remove-old-data"
    filter {
      prefix  = "data/"
    }
    noncurrent_version_expiration {
      noncurrent_days = var.artifacts_data_expiration_days
    }
  }
}

resource "aws_s3_bucket_versioning" "foundry_artifacts" {
  bucket        = aws_s3_bucket.foundry_artifacts.id
  versioning_configuration {
     status = "Disabled"
  }
}

resource "aws_s3_bucket_public_access_block" "foundry_artifacts_private" {
  count = var.artifacts_bucket_public ? 0 : 1

  block_public_acls       = true
  block_public_policy     = true
  bucket                  = aws_s3_bucket.foundry_artifacts.id
  ignore_public_acls      = true
  restrict_public_buckets = true
}

output artifacts_bucket_name {
  description = "The name of the S3 bucket holding versioned Foundry data."
  value       = aws_s3_bucket.foundry_artifacts.id
}

output artifacts_bucket_arn {
  description = "The ARN of the S3 bucket holding versioned Foundry data."
  value       = aws_s3_bucket.foundry_artifacts.arn
}
