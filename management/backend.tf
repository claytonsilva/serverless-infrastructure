terraform {
  backend "s3" {
    encrypt        = "false"
    bucket         = "crypto-resources-terraform"
    key            = "management/terraform.tfstate"
    dynamodb_table = "terraform_locks"
    region         = "us-east-2"
    profile        = "backend"
  }
}
