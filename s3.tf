# Frontend Bucket
resource "aws_s3_bucket" "frontend_bucket" {
  bucket = "all-in-one-frontend"
  tags   = local.common_tags
}

resource "aws_s3_bucket_acl" "frontend_bucket_acl" {
  bucket = aws_s3_bucket.frontend_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "frontend_bucket_versioning" {
  bucket = aws_s3_bucket.frontend_bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}

# Frontend Cloudfront Bucket Policy
resource "aws_s3_bucket_policy" "cloudfront_frontend_bucket_policy" {
  bucket = aws_s3_bucket.frontend_bucket.id
  policy = data.aws_iam_policy_document.frontend_bucket_policy_document.json
}
