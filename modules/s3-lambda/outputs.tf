
output "lambda_bucket" {
  description = "bucket name of lambda resources"
  value = "${aws_s3_bucket.lambda.id}"
}
