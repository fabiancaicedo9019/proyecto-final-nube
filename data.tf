data "aws_iam_policy_document" "frontend_bucket_policy_document" {
  statement {
    actions = ["s3:GetObject", "s3:ListBucket"]

    resources = [
      aws_s3_bucket.frontend_bucket.arn,
      "${aws_s3_bucket.frontend_bucket.arn}/*",
    ]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn]
    }
  }
}