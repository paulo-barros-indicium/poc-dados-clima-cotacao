terraform {
  backend "s3" {
    bucket = "poc-dados-dev-tfstate"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
