locals {
  region  = "${element(split("_","${terraform.env}"), 1 )}"
  profile = "${element(split("_","${terraform.env}"), 0 )}"
}
