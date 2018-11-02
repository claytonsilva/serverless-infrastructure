resource "aws_s3_bucket" "lambda" {
  bucket = "crypto-lambda-repository"
  acl    = "private"

  lifecycle_rule {
    id      = "versions"
    enabled = true

    prefix = "/"

    tags {
      "rule"      = "backups"
      "autoclean" = "true"
    }

    transition {
      days          = 90
      storage_class = "STANDARD_IA"
    }

    expiration {
      days = 180
    }
  }
}