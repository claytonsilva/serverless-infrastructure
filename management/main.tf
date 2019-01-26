module "s3" {
  source = "../modules/s3-lambda"
  region = "${local.region}"
  name   = "crypto-lambda-repository-${local.region}"
}
