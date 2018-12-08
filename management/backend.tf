terraform {
  backend "s3" {
    encrypt = "false"
    bucket  = "crypto-resources-terraform"
    key     = "management/terraform.tfstate"
    region  = "us-east-2"
    profile = "backend"
  }
}
