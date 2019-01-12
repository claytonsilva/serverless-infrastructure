module "s3" {
  source = "../modules/s3-lambda"
  region = "${var.region}"
}
