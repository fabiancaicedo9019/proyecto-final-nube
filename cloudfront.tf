resource "aws_cloudfront_distribution" "cloudfront_distribution" {
  comment = "Cloudfront Distribution pointing to FrontendS3 bucket"
  lifecycle {
    ignore_changes = []
  }

  default_cache_behavior {
    allowed_methods = ["HEAD", "GET"]
    cached_methods  = ["HEAD", "GET"]
    compress        = true
    default_ttl     = "60"

    forwarded_values {
      cookies {
        forward = "none"
      }

      query_string = "true"
    }

    min_ttl                = "0"
    max_ttl                = "3153"
    smooth_streaming       = "false"
    target_origin_id       = "S3OriginFrontend"
    viewer_protocol_policy = "redirect-to-https"
  }

  origin {
    custom_header {
      name  = "Access-Control-Allow-Origin"
      value = "*"
    }

    domain_name = aws_s3_bucket.frontend_bucket.bucket_domain_name
    origin_id   = "S3OriginFrontend"

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.origin_access_identity.cloudfront_access_identity_path
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }


  custom_error_response {
    error_caching_min_ttl = "0"
    error_code            = "404"
    response_code         = "200"
    response_page_path    = "/index.html"
  }

  custom_error_response {
    error_caching_min_ttl = "0"
    error_code            = "403"
    response_code         = "200"
    response_page_path    = "/index.html"
  }

  default_root_object = "index.html"
  is_ipv6_enabled     = false

  tags = local.common_tags

  enabled = true
}

resource "aws_cloudfront_origin_access_identity" "origin_access_identity" {
  comment = "S3 Hosting Bucket Access Identity - Terraform provisioned"
}

